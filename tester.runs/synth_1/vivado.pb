
?
Command: %s
1870*	planAhead2?
?read_checkpoint -auto_incremental -incremental C:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/utils_1/imports/synth_1/pickMode.dcp2default:defaultZ12-2866h px? 
?
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2?
pC:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/utils_1/imports/synth_1/pickMode.dcp2default:defaultZ12-5825h px? 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px? 
p
Command: %s
53*	vivadotcl2?
+synth_design -top FSM -part xc7a35tcpg236-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-349h px? 
V
Loading part %s157*device2#
xc7a35tcpg236-12default:defaultZ21-403h px? 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px? 
?
?Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
_
#Helper process launched with PID %s4824*oasys2
85802default:defaultZ8-7075h px? 
?
(instance name '%s' matches net/port name2254*oasys2
clk2default:default2u
_C:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/sources_1/new/FSM.v2default:default2
1282default:default8@Z8-2254h px? 
?
)previous declaration of '%s' is from here4683*oasys2
clk2default:default2u
_C:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/sources_1/new/FSM.v2default:default2
32default:default8@Z8-6826h px? 
?
.identifier '%s' is used before its declaration4750*oasys2
acount12default:default2u
_C:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/sources_1/new/FSM.v2default:default2
702default:default8@Z8-6901h px? 
?
.identifier '%s' is used before its declaration4750*oasys2
count12default:default2u
_C:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/sources_1/new/FSM.v2default:default2
702default:default8@Z8-6901h px? 
?
.identifier '%s' is used before its declaration4750*oasys2
acount22default:default2u
_C:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/sources_1/new/FSM.v2default:default2
702default:default8@Z8-6901h px? 
?
.identifier '%s' is used before its declaration4750*oasys2
count22default:default2u
_C:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/sources_1/new/FSM.v2default:default2
702default:default8@Z8-6901h px? 
?
.identifier '%s' is used before its declaration4750*oasys2
acount32default:default2u
_C:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/sources_1/new/FSM.v2default:default2
702default:default8@Z8-6901h px? 
?
.identifier '%s' is used before its declaration4750*oasys2
count32default:default2u
_C:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/sources_1/new/FSM.v2default:default2
702default:default8@Z8-6901h px? 
?
.identifier '%s' is used before its declaration4750*oasys2
acount42default:default2u
_C:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/sources_1/new/FSM.v2default:default2
702default:default8@Z8-6901h px? 
?
.identifier '%s' is used before its declaration4750*oasys2
count42default:default2u
_C:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/sources_1/new/FSM.v2default:default2
702default:default8@Z8-6901h px? 
?
.identifier '%s' is used before its declaration4750*oasys2
acount12default:default2u
_C:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/sources_1/new/FSM.v2default:default2
722default:default8@Z8-6901h px? 
?
.identifier '%s' is used before its declaration4750*oasys2
count12default:default2u
_C:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/sources_1/new/FSM.v2default:default2
722default:default8@Z8-6901h px? 
?
.identifier '%s' is used before its declaration4750*oasys2
acount22default:default2u
_C:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/sources_1/new/FSM.v2default:default2
722default:default8@Z8-6901h px? 
?
.identifier '%s' is used before its declaration4750*oasys2
count22default:default2u
_C:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/sources_1/new/FSM.v2default:default2
722default:default8@Z8-6901h px? 
?
.identifier '%s' is used before its declaration4750*oasys2
acount32default:default2u
_C:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/sources_1/new/FSM.v2default:default2
722default:default8@Z8-6901h px? 
?
.identifier '%s' is used before its declaration4750*oasys2
count32default:default2u
_C:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/sources_1/new/FSM.v2default:default2
722default:default8@Z8-6901h px? 
?
.identifier '%s' is used before its declaration4750*oasys2
acount42default:default2u
_C:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/sources_1/new/FSM.v2default:default2
722default:default8@Z8-6901h px? 
?
.identifier '%s' is used before its declaration4750*oasys2
count42default:default2u
_C:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/sources_1/new/FSM.v2default:default2
722default:default8@Z8-6901h px? 
?
.identifier '%s' is used before its declaration4750*oasys2
sec12default:default2u
_C:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/sources_1/new/FSM.v2default:default2
722default:default8@Z8-6901h px? 
?
.identifier '%s' is used before its declaration4750*oasys2
asec12default:default2u
_C:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/sources_1/new/FSM.v2default:default2
722default:default8@Z8-6901h px? 
?
.identifier '%s' is used before its declaration4750*oasys2
sec22default:default2u
_C:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/sources_1/new/FSM.v2default:default2
722default:default8@Z8-6901h px? 
?
.identifier '%s' is used before its declaration4750*oasys2
asec22default:default2u
_C:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/sources_1/new/FSM.v2default:default2
722default:default8@Z8-6901h px? 
?
%s*synth2?
wStarting RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 1285.145 ; gain = 0.000
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2
FSM2default:default2
 2default:default2u
_C:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/sources_1/new/FSM.v2default:default2
32default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2&
pushButtonDetector2default:default2
 2default:default2?
nC:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/sources_1/new/pushButtonDetector.v2default:default2
232default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2 
clockDivider2default:default2
 2default:default2~
hC:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/sources_1/new/clockDivider.v2default:default2
222default:default8@Z8-6157h px? 
[
%s
*synth2C
/	Parameter n bound to: 500000 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
clockDivider2default:default2
 2default:default2
02default:default2
12default:default2~
hC:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/sources_1/new/clockDivider.v2default:default2
222default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
	debouncer2default:default2
 2default:default2{
eC:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/sources_1/new/debouncer.v2default:default2
222default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	debouncer2default:default2
 2default:default2
02default:default2
12default:default2{
eC:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/sources_1/new/debouncer.v2default:default2
222default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2 
synchronizer2default:default2
 2default:default2~
hC:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/sources_1/new/synchronizer.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
synchronizer2default:default2
 2default:default2
02default:default2
12default:default2~
hC:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/sources_1/new/synchronizer.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2&
risingEdgeDetector2default:default2
 2default:default2?
nC:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/sources_1/new/risingEdgeDetector.v2default:default2
222default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
risingEdgeDetector2default:default2
 2default:default2
02default:default2
12default:default2?
nC:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/sources_1/new/risingEdgeDetector.v2default:default2
222default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
pushButtonDetector2default:default2
 2default:default2
02default:default2
12default:default2?
nC:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/sources_1/new/pushButtonDetector.v2default:default2
232default:default8@Z8-6155h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
en2default:default2u
_C:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/sources_1/new/FSM.v2default:default2
162default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
sec12default:default2u
_C:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/sources_1/new/FSM.v2default:default2
702default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
asec12default:default2u
_C:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/sources_1/new/FSM.v2default:default2
702default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
sec22default:default2u
_C:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/sources_1/new/FSM.v2default:default2
702default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
asec22default:default2u
_C:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/sources_1/new/FSM.v2default:default2
702default:default8@Z8-567h px? 
?
synthesizing module '%s'%s4497*oasys20
clockDivider__parameterized02default:default2
 2default:default2~
hC:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/sources_1/new/clockDivider.v2default:default2
222default:default8@Z8-6157h px? 
]
%s
*synth2E
1	Parameter n bound to: 50000000 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys20
clockDivider__parameterized02default:default2
 2default:default2
02default:default2
12default:default2~
hC:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/sources_1/new/clockDivider.v2default:default2
222default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
clock2default:default2
 2default:default2w
aC:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/sources_1/new/clock.v2default:default2
32default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2!
binaryCounter2default:default2
 2default:default2
iC:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/sources_1/new/binaryCounter.v2default:default2
222default:default8@Z8-6157h px? 
V
%s
*synth2>
*	Parameter x bound to: 4 - type: integer 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter y bound to: 10 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
binaryCounter2default:default2
 2default:default2
02default:default2
12default:default2
iC:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/sources_1/new/binaryCounter.v2default:default2
222default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys21
binaryCounter__parameterized02default:default2
 2default:default2
iC:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/sources_1/new/binaryCounter.v2default:default2
222default:default8@Z8-6157h px? 
V
%s
*synth2>
*	Parameter x bound to: 4 - type: integer 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter y bound to: 6 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
binaryCounter__parameterized02default:default2
 2default:default2
02default:default2
12default:default2
iC:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/sources_1/new/binaryCounter.v2default:default2
222default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys21
binaryCounter__parameterized12default:default2
 2default:default2
iC:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/sources_1/new/binaryCounter.v2default:default2
222default:default8@Z8-6157h px? 
V
%s
*synth2>
*	Parameter x bound to: 4 - type: integer 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter y bound to: 3 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
binaryCounter__parameterized12default:default2
 2default:default2
02default:default2
12default:default2
iC:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/sources_1/new/binaryCounter.v2default:default2
222default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
clock2default:default2
 2default:default2
02default:default2
12default:default2w
aC:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/sources_1/new/clock.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
alarm2default:default2
 2default:default2w
aC:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/sources_1/new/alarm.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
alarm2default:default2
 2default:default2
02default:default2
12default:default2w
aC:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/sources_1/new/alarm.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys20
clockDivider__parameterized12default:default2
 2default:default2~
hC:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/sources_1/new/clockDivider.v2default:default2
222default:default8@Z8-6157h px? 
[
%s
*synth2C
/	Parameter n bound to: 250000 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys20
clockDivider__parameterized12default:default2
 2default:default2
02default:default2
12default:default2~
hC:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/sources_1/new/clockDivider.v2default:default2
222default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys21
binaryCounter__parameterized22default:default2
 2default:default2
iC:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/sources_1/new/binaryCounter.v2default:default2
222default:default8@Z8-6157h px? 
V
%s
*synth2>
*	Parameter x bound to: 2 - type: integer 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter y bound to: 4 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
binaryCounter__parameterized22default:default2
 2default:default2
02default:default2
12default:default2
iC:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/sources_1/new/binaryCounter.v2default:default2
222default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
FSM2default:default2
 2default:default2
02default:default2
12default:default2u
_C:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/sources_1/new/FSM.v2default:default2
32default:default8@Z8-6155h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2
reset2default:default2
alarm2default:default2w
aC:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/sources_1/new/alarm.v2default:default2
302default:default8@Z8-3848h px? 
?
%s*synth2?
wFinished RTL Elaboration : Time (s): cpu = 00:00:07 ; elapsed = 00:00:06 . Memory (MB): peak = 1285.145 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 1285.145 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 1285.145 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0102default:default2
1285.1452default:default2
0.0002default:defaultZ17-268h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
Parsing XDC File [%s]
179*designutils2y
cC:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/constrs_1/new/clock.xdc2default:default8Z20-179h px? 
?
No nets matched '%s'.
507*	planAhead2
en_IBUF2default:default2y
cC:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/constrs_1/new/clock.xdc2default:default2
32default:default8@Z12-507h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2y
cC:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/constrs_1/new/clock.xdc2default:default2
32default:default8@Z17-55h px?
?
Finished Parsing XDC File [%s]
178*designutils2y
cC:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/constrs_1/new/clock.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2w
cC:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/constrs_1/new/clock.xdc2default:default2)
.Xil/FSM_propImpl.xdc2default:defaultZ1-236h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1335.0592default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0042default:default2
1335.0592default:default2
0.0002default:defaultZ17-268h px? 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px? 
?
?Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
~Finished Constraint Validation : Time (s): cpu = 00:00:14 ; elapsed = 00:00:14 . Memory (MB): peak = 1335.059 ; gain = 49.914
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Loading part: xc7a35tcpg236-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:14 ; elapsed = 00:00:14 . Memory (MB): peak = 1335.059 ; gain = 49.914
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:14 ; elapsed = 00:00:14 . Memory (MB): peak = 1335.059 ; gain = 49.914
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2&
risingEdgeDetector2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2"
stateBlink_reg2default:default2
FSM2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2

state__reg2default:default2
FSM2default:defaultZ8-802h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                       a |                               00 |                               00
2default:defaulth p
x
? 
?
%s
*synth2s
_                       b |                               01 |                               01
2default:defaulth p
x
? 
?
%s
*synth2s
_                       c |                               10 |                               10
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2

sequential2default:default2&
risingEdgeDetector2default:defaultZ8-3354h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
.
%s
*synth2
*
2default:defaulth p
x
? 
?
%s
*synth2s
_                    node |                               01 |                               01
2default:defaulth p
x
? 
?
%s
*synth2s
_                   alarm |                               10 |                               10
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
6No Re-encoding of one hot register '%s' in module '%s'3445*oasys2"
stateBlink_reg2default:default2
FSM2default:defaultZ8-3898h px? 
?
!inferring latch for variable '%s'327*oasys2!
nextState_reg2default:default2u
_C:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.srcs/sources_1/new/FSM.v2default:default2
192default:default8@Z8-327h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                       n |                               00 |                               00
2default:defaulth p
x
? 
?
%s
*synth2s
_                       d |                               01 |                               01
2default:defaulth p
x
? 
?
%s
*synth2s
_                       u |                               10 |                               10
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2

state__reg2default:default2

sequential2default:default2
FSM2default:defaultZ8-3354h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:14 ; elapsed = 00:00:14 . Memory (MB): peak = 1335.059 ; gain = 49.914
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
$decloning instance '%s' (%s) to '%s'223*oasys2
blink2default:default20
clockDivider__parameterized02default:default2

decimalPnt2default:defaultZ8-223h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   32 Bit       Adders := 10    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit       Adders := 24    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    2 Bit       Adders := 2     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 10    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                5 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 14    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 39    
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   32 Bit        Muxes := 10    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    5 Bit        Muxes := 5     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    5 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   7 Input    5 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 29    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   5 Input    4 Bit        Muxes := 12    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    4 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   7 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    2 Bit        Muxes := 9     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    2 Bit        Muxes := 26    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    2 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 22    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   5 Input    1 Bit        Muxes := 13    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2j
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:21 ; elapsed = 00:00:21 . Memory (MB): peak = 1335.059 ; gain = 49.914
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:26 ; elapsed = 00:00:26 . Memory (MB): peak = 1335.059 ; gain = 49.914
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Timing Optimization : Time (s): cpu = 00:00:26 ; elapsed = 00:00:26 . Memory (MB): peak = 1335.059 ; gain = 49.914
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
{Finished Technology Mapping : Time (s): cpu = 00:00:26 ; elapsed = 00:00:26 . Memory (MB): peak = 1335.059 ; gain = 49.914
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
uFinished IO Insertion : Time (s): cpu = 00:00:31 ; elapsed = 00:00:31 . Memory (MB): peak = 1335.059 ; gain = 49.914
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:31 ; elapsed = 00:00:31 . Memory (MB): peak = 1335.059 ; gain = 49.914
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:31 ; elapsed = 00:00:31 . Memory (MB): peak = 1335.059 ; gain = 49.914
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:31 ; elapsed = 00:00:31 . Memory (MB): peak = 1335.059 ; gain = 49.914
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:31 ; elapsed = 00:00:31 . Memory (MB): peak = 1335.059 ; gain = 49.914
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:31 ; elapsed = 00:00:31 . Memory (MB): peak = 1335.059 ; gain = 49.914
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|      |Cell   |Count |
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|1     |BUFG   |     2|
2default:defaulth px? 
D
%s*synth2,
|2     |CARRY4 |    80|
2default:defaulth px? 
D
%s*synth2,
|3     |LUT1   |    13|
2default:defaulth px? 
D
%s*synth2,
|4     |LUT2   |    17|
2default:defaulth px? 
D
%s*synth2,
|5     |LUT3   |     9|
2default:defaulth px? 
D
%s*synth2,
|6     |LUT4   |    99|
2default:defaulth px? 
D
%s*synth2,
|7     |LUT5   |   425|
2default:defaulth px? 
D
%s*synth2,
|8     |LUT6   |    62|
2default:defaulth px? 
D
%s*synth2,
|9     |FDCE   |   405|
2default:defaulth px? 
D
%s*synth2,
|10    |FDPE   |     1|
2default:defaulth px? 
D
%s*synth2,
|11    |FDRE   |    29|
2default:defaulth px? 
D
%s*synth2,
|12    |LD     |     5|
2default:defaulth px? 
D
%s*synth2,
|13    |IBUF   |     8|
2default:defaulth px? 
D
%s*synth2,
|14    |OBUF   |    18|
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:31 ; elapsed = 00:00:31 . Memory (MB): peak = 1335.059 ; gain = 49.914
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 2 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
}Synthesis Optimization Runtime : Time (s): cpu = 00:00:23 ; elapsed = 00:00:29 . Memory (MB): peak = 1335.059 ; gain = 0.000
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Complete : Time (s): cpu = 00:00:31 ; elapsed = 00:00:31 . Memory (MB): peak = 1335.059 ; gain = 49.914
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0122default:default2
1335.0592default:default2
0.0002default:defaultZ17-268h px? 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
852default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1335.0592default:default2
0.0002default:defaultZ17-268h px? 
?
!Unisim Transformation Summary:
%s111*project2Y
E  A total of 5 instances were transformed.
  LD => LDCE: 5 instances
2default:defaultZ1-111h px? 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
2e26a2c92default:defaultZ4-1430h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
572default:default2
302default:default2
12default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:342default:default2
00:00:352default:default2
1335.0592default:default2
49.9142default:defaultZ17-268h px? 
u
%s6*runtcl2Y
ESynthesis results are not added to the cache due to CRITICAL_WARNING
2default:defaulth px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2o
[C:/Users/knzyahmed/Downloads/FINALWORKINGVERSION-DEC11TH-3.13AM/tester.runs/synth_1/FSM.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2p
\Executing : report_utilization -file FSM_utilization_synth.rpt -pb FSM_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Sat Dec 17 08:27:44 20222default:defaultZ17-206h px? 


End Record