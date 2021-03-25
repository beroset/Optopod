# Purpose
The purpose for the Optopod is to allow a Raspberry Pi or other small microcontroller to communicate with a meter using either the ANSI C12.18 or IEC 62056-21 communications standard.  Both standards use a very simple infrared (IR) optical communications protocol and the physical attributes of the port are nearly identical.  In particular, there are only two significant differences:  the IEC protocol has the transmit on the right and receive on the left with a round port, while the ANSI protocol has the transmit on the left and receive on the right with a flat at the bottom of the otherwise round port.  The IEC version is shown in Figure 1.

![IEC optical port](Optopod/images/IEC_optical_port.png)

In addition to simply operating as a probe, the circuit will also have an intercept feature.  That is, it is intended to be able to put the circuit between an optical probe attached to a computer and a meter.  This will allow the Raspberry Pi to "listen in" to the communications between programming and/or reading software and the meter, allowing the circuit to be used to capture that communications for later analysis and/or alter it on the fly.

# Design overview
The board is intended to be driven from a 3.3V power supply and communications.  The serial RX and TX lines of a Raspberry Pi will be used to receive/transmit via the optical port circuits on opposite sides of the board.  A six-pin connector will be used for +3.3V, GND, RX1, TX1, RX2 and TX2 lines.   To make the assembly as simple as possible, only the IR LED and IR phototransistor will be on the opposite side of the board.  All other parts will be on the front of the board, allowing reflow soldering of all but those two parts.

## Optical specification
The optical specifications are derived from both the the IEC and ANSI standards.  The wavelength is specified as from 800 nm to 1000 nm, which is quite wide, while most IR diodes and phototransistors have a narrow peak.  In doing some research into currently commercially available probes and meters, it appears that 880 nm is widely used and is conveniently near the middle of the specified range, so this design uses 880 nm devices.

### Transmitter characteristics

The transmit power is specified for a 5 mm diameter spot directly in front of the transmitter and at 10 mm and 25 mm distances for both on and off conditions.  The numbers are slightly different for the ANSI and IEC versions of the specification as shown in Table 1.

distance | IEC ON power       | IEC OFF power        | ANSI ON power         | ANSI OFF power
(mm)     | (\$\text{mW/cm}^3\$) | (\$\text{mW/cm}^3\$)   | (\$\text{mW/cm}^3\$)    | (\$\text{mW/cm}^3\$)
---------|--------------------|----------------------|-----------------------|--------------------
10       | \$0.5 \le x \le 5\$  | \$x \le 0.01\$         |  \$1 < x < 7.5\$        |    \$x < 0.01\$
25       | no spec            |  no spec             |  \$1 < x < 7.5\$        |    \$x < 0.01\$

Table: Optical specifications for transmitter

Because these measurements are in $\text{mW/cm}^2$, but output specifications for IR LEDs is typically in mW/sr we need to convert.  Because we have the dimension of the test setup from the standards as mentioned above, we can calculate the size of the target in steradians by dividing the area of the target by the distance to it:

$$ \text{sr} = \frac{A_{\text{target}}}{d} = \frac{\pi r^2}{d} $$

So for the two distances specified in the ANSI standard we have

$$ \frac{\pi (2.5\text{mm})^2}{10\text{mm}} = 1.963 \text{sr} $$

$$ \frac{\pi (2.5\text{mm})^2}{25\text{mm}} = 0.785 \text{sr} $$

To convert from the specified values in $\text{mW/cm}^3$ to mW/sr, we simply divide the power values by these two calculated steradians values.

+---------+---------------------+----------------------+-----------------------+--------------------+
|distance | IEC ON power        | IEC OFF power        | ANSI ON power         | ANSI OFF power     |
|(mm)     | (mW/sr)             | (mW/sr)              | (mW/sr)               | (mW/sr)            |
+=========+=====================+======================+=======================+====================+
|10       |$0.25 \le x\le 2.5$  | $x \le 0.005$        |  $0.5 < x < 3.82$     |    $x < 0.005$     |
+---------+---------------------+----------------------+-----------------------+--------------------+
|25       | no spec             |  no spec             |$1.27 < x < 9.55$      |    $x < 0.0127$    |
+---------+---------------------+----------------------+-----------------------+--------------------+

Table: Desired optical characteristics for transmitter

Given these different values, an IR LED with a power specification of from 1.27 to 2.5 mW/sr should work and meet all specifications.  This is easily met by the Kingbright APTD3216SF4C-P22 GaAlAs LED which is specified to have an output power at least 1.6 mW/sr and a typical value of 4 mW/sr at 20mA.  This particular IR LED has a 40 degree viewing angle, so should easily be able to illuminate the corresponding receiver.  Because the output power is proportional to the current, we will have to drive the part with a maximum of 20 mA to meet the specification.  Since few microprocessor pins can sink that much current, we can use a simple common emitter transistor as an output transistor to boost the current and another input transistor to invert the sense (ON means zero for both ANSI and IEC specifications).  The BC817-40 is an NPN bipolar junction transistor (BJT) in a SOT23 package that should work nicely for this purpose.  For the output transistor, $V_{CE(SAT)} = 0.024\text{V} @ I_C = 20\text{mA}$, and because the forward voltage of the diode is typically 1.3V (and max 1.6V), we can calculate the load resistor $(3.3 - 1.3 - 0.024)\text{V}/20\text{mA} = 98.8\Omega$, so we can use the next lowest standard value, $91\Omega$.  SPICE modeling has confirmed this value and others for the two-transistor circuit for the transmitter.  Specifically, a $5.1k\Omega$ series base resistor and $1.5k\Omega$ resistor for a divider, and a $330\Omega$ pull up on the collector of the input transistor. The collector of the input transistor connects directly to the base of the output transistor and the output transistor collector is tied directly to 3.3V.  The $91\Omega$ resistor and IR diode are in series between the output transistor's emitter and ground.  The transmit circuit is shown in Figure 2.

![Transmit circuit](Optopod/images/transmit.png)

### Receiver characteristics
The receiver characteristics mirror the transmitter characteristics in that instead of the on and off producing a particular light output, the light input values are specified to produce either on or off as outputs.  The Kingbright APTD3216P3C-P22 phototransistor has the same size package and lens as the IR LED mentioned above and appears to meet all of the characteristics needed, although its peak sensitivity is a bit higher, at a wavelength of 940 nm.  Because the receiver sensitivity is broader than the transmitter sensitivity, this does not cause a problem; the sensitivity at 880 nm is around 95% of the sensitivity at 940 nm.  Because $V_{CE(SAT)} = 0.8\text{V}$ max for this phototransistor and the typical $I_{C(ON)} = 1\text{mA}$, we can calculate the series resistor $(3.3\text{V}-0.8\text{V})/(1\text{mA}) = 2500\Omega \approx 2.2k\Omega$.  The receive circuit is shown in Figure 3.

![Receive circuit](Optopod/images/receive.png)

### Board design
As mentioned earlier, the board actually has two separate transmit circuits and two separate receive circuits so that the board may be used *between* an optical probe and meter to allow it to "listen in" on the conversation between, say, proprietary programming software and a meter.  For simplicity in manufacturing all of the surface mount parts are mounted on the front except for one of the IR diode/phototransistor pairs, designated D1 and Q1 on the schematic.  The bill of materials is in Table 3 and the rendered version of the final board is shown in Figure 4.

 Item| Qty | Reference(s)  |    Value                                 | Price  |Ext Total
-----|-----|---------------|------------------------------------------|--------|----------
 1   | 2   |D1, D2         |IR LED Kingbright APTD3216F3C-P22         |$0.147  |$0.29
 2   | 1   |J1             |right angle 6pos hdr, 2.54mm              |$0.105  |$0.11
 3   | 2   |Q1, Q5         |IR phototrans Kingbright APTD3216P3C-P22  |$0.140  |$0.28
 4   | 4   |Q2, Q3, Q4, Q6 |TRANS NPN 45V 0.5A SOT23, BC817-40        |$0.049  |$0.20
 5   | 2   |R1, R6         |0402 SMD resistor 2.2K                    |$0.019  |$0.04
 6   | 2   |R2, R7         |0402 SMD resistor 330                     |$0.019  |$0.04
 7   | 2   |R3, R8         |0402 SMD resistor 5.1K                    |$0.019  |$0.04
 8   | 2   |R4, R9         |0402 SMD resistor 91                      |$0.019  |$0.04
 9   | 2   |R5, R10        |0402 SMD resistor 1.5K                    |$0.019  |$0.04
 10  | 1   |board          |Custom PCB                                |$1.550  |$1.55
     |     |               | **TOTAL**                                |        |**$2.62**

Table: Bill of materials

![3D-rendered board](Optopod/images/opticalport_front.png)


