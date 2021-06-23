~osc1= {SinOsc.ar(620*XLine.ar(start: 0.01,end:0.3, dur: 0.20, mul: 1.0, add: 0.0, doneAction: 0),SinOsc.ar(445,20,SinOsc.ar(120,SinOsc.ar(120.4* XLine.ar(start:10 , end: 12, dur: 1.0, mul: 1.0, add: 0.0, doneAction: 0),0,1,1),1,1),1),1,1).dup}.play;


{ LPF.ar(SinOsc.ar(XLine.ar(start:8000, end:TIRand.kr(lo: 100, hi: 327, trig: 0.0), dur: 0.10, mul: 1.0, add: 0.0, doneAction: 0),SinOsc.ar(445,20,SinOsc.ar(120,SinOsc.ar(120.4,0,1,1),1,1),1),1,1), SinOsc.kr(XLine.kr(0.0,300,20),1,600,000)) .dup}.play;





x = {SinOsc.ar(40,SinOsc.ar(120,SinOsc.ar(360,1,LFTri.ar(1.1,0,1,1),1),LFTri.ar(1,0,1,1),1),LFTri.ar(1.2,0,1,1),0).dup}.play;


(
{
    var env = Env([0,0,2, 1, 0.5, 0], [0.5, 0.1,0.1, 0.5]);
    SinOsc.ar(470) * EnvGen.kr(env, doneAction: Done.freeSelf)
.dup}.play
)

(
{
    var env = Env([0,0,2, 1, 0.5, 0], [0.5, 0.1,0.1, 0.5]);
	SinOsc.ar(322,SinOsc.ar(320,SinOsc.ar(48,0,1* EnvGen.kr(env, doneAction: Done.freeSelf))),1 * EnvGen.kr(env, doneAction: Done.freeSelf),0)
.dup}.play
)


(
{
    var env = Env([0,0,2, 1, 0.5, 0], [0.5, 0.1,0.1, 0.5]);
	SinOsc.ar(140,SinOsc.ar(320,SinOsc.ar(320,0,1* EnvGen.kr(env, doneAction: Done.freeSelf))),1 * EnvGen.kr(env, doneAction: Done.freeSelf),0)
.dup}.play
)

(x={SinOsc.ar(80,LFTri.ar(120,SinOsc.ar(240,0,1,0),1,0),1,0).dup}.play;
y={SinOsc.ar(80.1,LFTri.ar(120,SinOsc.ar(240,0,1,0),1,0),1,0).dup}.play;
z={SinOsc.ar(80.4,LFTri.ar(120,SinOsc.ar(240,0,1,0),1,0),1,0).dup}.play;)
