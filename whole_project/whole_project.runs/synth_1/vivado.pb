
?
Command: %s
1870*	planAhead2?
?read_checkpoint -auto_incremental -incremental C:/Users/knzyahmed/Downloads/tester-20221209T193127Z-001/whole_project/whole_project.srcs/utils_1/imports/synth_1/FSM.dcp2default:defaultZ12-2866h px? 
?
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2?
yC:/Users/knzyahmed/Downloads/tester-20221209T193127Z-001/whole_project/whole_project.srcs/utils_1/imports/synth_1/FSM.dcp2default:defaultZ12-5825h px? 
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

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px? 
?
?Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
`
#Helper process launched with PID %s4824*oasys2
133762default:defaultZ8-7075h px? 
?
.redeclaration of ansi port '%s' is not allowed6229*oasys2
Count2default:default2?
wC:/Users/knzyahmed/Downloads/tester-20221209T193127Z-001/whole_project/whole_project.srcs/sources_1/new/upDownCounter.v2default:default2
62default:default8@Z8-9971h px? 
?
%s*synth2?
rStarting Synthesize : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 1285.941 ; gain = 0.000
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2
FSM2default:default2
 2default:default2?
mC:/Users/knzyahmed/Downloads/tester-20221209T193127Z-001/whole_project/whole_project.srcs/sources_1/new/FSM.v2default:default2
32default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2&
pushButtonDetector2default:default2
 2default:default2?
|C:/Users/knzyahmed/Downloads/tester-20221209T193127Z-001/whole_project/whole_project.srcs/sources_1/new/pushButtonDetector.v2default:default2
32default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2 
clockDivider2default:default2
 2default:default2?
vC:/Users/knzyahmed/Downloads/tester-20221209T193127Z-001/whole_project/whole_project.srcs/sources_1/new/clockDivider.v2default:default2
32default:default8@Z8-6157h px? 
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
12default:default2?
vC:/Users/knzyahmed/Downloads/tester-20221209T193127Z-001/whole_project/whole_project.srcs/sources_1/new/clockDivider.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
	debouncer2default:default2
 2default:default2?
sC:/Users/knzyahmed/Downloads/tester-20221209T193127Z-001/whole_project/whole_project.srcs/sources_1/new/debouncer.v2default:default2
32default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	debouncer2default:default2
 2default:default2
02default:default2
12default:default2?
sC:/Users/knzyahmed/Downloads/tester-20221209T193127Z-001/whole_project/whole_project.srcs/sources_1/new/debouncer.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2 
synchronizer2default:default2
 2default:default2?
vC:/Users/knzyahmed/Downloads/tester-20221209T193127Z-001/whole_project/whole_project.srcs/sources_1/new/synchronizer.v2default:default2
32default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
synchronizer2default:default2
 2default:default2
02default:default2
12default:default2?
vC:/Users/knzyahmed/Downloads/tester-20221209T193127Z-001/whole_project/whole_project.srcs/sources_1/new/synchronizer.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2&
risingEdgeDetector2default:default2
 2default:default2?
|C:/Users/knzyahmed/Downloads/tester-20221209T193127Z-001/whole_project/whole_project.srcs/sources_1/new/risingEdgeDetector.v2default:default2
32default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
risingEdgeDetector2default:default2
 2default:default2
02default:default2
12default:default2?
|C:/Users/knzyahmed/Downloads/tester-20221209T193127Z-001/whole_project/whole_project.srcs/sources_1/new/risingEdgeDetector.v2default:default2
32default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
pushButtonDetector2default:default2
 2default:default2
02default:default2
12default:default2?
|C:/Users/knzyahmed/Downloads/tester-20221209T193127Z-001/whole_project/whole_project.srcs/sources_1/new/pushButtonDetector.v2default:default2
32default:default8@Z8-6155h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
en2default:default2?
mC:/Users/knzyahmed/Downloads/tester-20221209T193127Z-001/whole_project/whole_project.srcs/sources_1/new/FSM.v2default:default2
182default:default8@Z8-567h px? 
?
synthesizing module '%s'%s4497*oasys2)
minutes_hours_counter2default:default2
 2default:default2?
C:/Users/knzyahmed/Downloads/tester-20221209T193127Z-001/whole_project/whole_project.srcs/sources_1/new/minutes_hours_counter.v2default:default2
32default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys20
clockDivider__parameterized02default:default2
 2default:default2?
vC:/Users/knzyahmed/Downloads/tester-20221209T193127Z-001/whole_project/whole_project.srcs/sources_1/new/clockDivider.v2default:default2
32default:default8@Z8-6157h px? 
\
%s
*synth2D
0	Parameter n bound to: 5000000 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys20
clockDivider__parameterized02default:default2
 2default:default2
02default:default2
12default:default2?
vC:/Users/knzyahmed/Downloads/tester-20221209T193127Z-001/whole_project/whole_project.srcs/sources_1/new/clockDivider.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2!
binaryCounter2default:default2
 2default:default2?
wC:/Users/knzyahmed/Downloads/tester-20221209T193127Z-001/whole_project/whole_project.srcs/sources_1/new/binaryCounter.v2default:default2
32default:default8@Z8-6157h px? 
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
12default:default2?
wC:/Users/knzyahmed/Downloads/tester-20221209T193127Z-001/whole_project/whole_project.srcs/sources_1/new/binaryCounter.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys21
binaryCounter__parameterized02default:default2
 2default:default2?
wC:/Users/knzyahmed/Downloads/tester-20221209T193127Z-001/whole_project/whole_project.srcs/sources_1/new/binaryCounter.v2default:default2
32default:default8@Z8-6157h px? 
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
12default:default2?
wC:/Users/knzyahmed/Downloads/tester-20221209T193127Z-001/whole_project/whole_project.srcs/sources_1/new/binaryCounter.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys21
binaryCounter__parameterized12default:default2
 2default:default2?
wC:/Users/knzyahmed/Downloads/tester-20221209T193127Z-001/whole_project/whole_project.srcs/sources_1/new/binaryCounter.v2default:default2
32default:default8@Z8-6157h px? 
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
12default:default2?
wC:/Users/knzyahmed/Downloads/tester-20221209T193127Z-001/whole_project/whole_project.srcs/sources_1/new/binaryCounter.v2default:default2
32default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
minutes_hours_counter2default:default2
 2default:default2
02default:default2
12default:default2?
C:/Users/knzyahmed/Downloads/tester-20221209T193127Z-001/whole_project/whole_project.srcs/sources_1/new/minutes_hours_counter.v2default:default2
32default:default8@Z8-6155h px? 
?
:variable '%s' should not be used in output port connection685*oasys2
	minsUnits2default:default2?
mC:/Users/knzyahmed/Downloads/tester-20221209T193127Z-001/whole_project/whole_project.srcs/sources_1/new/FSM.v2default:default2
782default:default8@Z8-685h px? 
?
!failed synthesizing module '%s'%s4496*oasys2
FSM2default:default2
 2default:default2?
mC:/Users/knzyahmed/Downloads/tester-20221209T193127Z-001/whole_project/whole_project.srcs/sources_1/new/FSM.v2default:default2
32default:default8@Z8-6156h px? 
?
%s*synth2?
rFinished Synthesize : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 1285.941 ; gain = 0.000
2default:defaulth px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
302default:default2
22default:default2
02default:default2
32default:defaultZ4-41h px? 
N

%s failed
30*	vivadotcl2 
synth_design2default:defaultZ4-43h px? 
`
Command failed: %s
69*common2+
Vivado Synthesis failed2default:defaultZ17-69h px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Sat Dec 10 03:30:19 20222default:defaultZ17-206h px? 


End Record