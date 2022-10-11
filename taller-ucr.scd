// Programación para la creación musical

s.boot;
s.meter;

// Abstracción alta > programación exploratoria
a = {SinOsc.ar(440, 0, 0.2)}.play;
a.free;

// Abstracción baja de la calse: seleccionar e ir Language > Look up Implementations for Cursor
SinOsc.ar

// Abstracción baja del código fuente de Supercollider ver en:
// https://github.com/supercollider/supercollider

// Programación exploratoria con Pdef de la librería JITLib
(
Pdef(\exp).stop
);

// al final del documento puedes ver todas las llaves para notas
Event.help;

// SonoTexto
// https://github.com/hvillase/sonotexto

b=SonoTexto;
b.boot;
b.rec(1);
b.write(1);

Synth(\b1);

(
Pdef(\sonotexto, Pbind(\instrument, \b1,
	\dur, Pseq([2, 0.5, 1, Pn(0.25, 2)], inf),
	\sb1, 1,
	\st, ~buf1.numFrames * Pseq([0.1, 0.5, 0.6, 0.5], inf),
	\rate, Pseq([1, 1.2, 0.9], inf)
)).stop
)

SonoTexto.help;

// Sampletexto
// https://github.com/hvillase/sampletexto

c=SampleTexto.new;
c.init(path: "/sonotexto/");
c.stsel;
c.info;
c.monosynth(74); // el número de samples mono -1

(
Pdef(\mono, Pbind(\instrument, Pseq([\m19, \m34, \m56, \m55], inf),
	\dur, Pseq([0.25, 0.5, 0.5, Pn(0.5, 3)], inf),
	\sus, 0.1, \rel, 0.25
)).stop
)

SampleTexto.help;

// Ptexto
// https://github.com/hvillase/ptexto

n=Ptexto([1, 2, 3, 4, 5], 1.5, 0, inf).asStream;
n.next;

Ptexto.help;