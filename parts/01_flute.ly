flute = \relative c'' {
  \time 4/4
  \tempo " = 60"
  \key f \major

  \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet

  % Music follows here.
  \override Hairpin.circled-tip = ##t
  \compressMMRests { R1*8 } \mark \default r1 r2
  a2\< ~ a1\!\pp ~ a1 ~ a1 ~ a2.\> r4\! r1

  \tempo \markup { "rit. " } d,4 (e16 [f16 g16 a16 a8] \slashedGrace g8 a4*1/2) r4

  \mark \default %B
  r4 f8(\mp\> g8 a4 g8. a32 g32 c,2) r2\!

  \override Hairpin.circled-tip = ##f
  d'8(\p\> a8 g4) f4 e4
  e8( f8 g4 a2)
  g2(\!\ppp a4 d4)
  c2. a'4

  \key ees \major

}

flutePart = \new Staff \with {
  instrumentName = "Flute"
  shortInstrumentName = "Fl."
  midiInstrument = "flute"
} \flute

\book {
  \bookOutputName "Flute"
  \header {
  title = "4e Image"
  subtitle = "Exposition Immersive"
  composer = "Noa St-Onge (ASCAP)"
  copyright = "Copyright (c) 2024"
  % Remove default LilyPond tagline
  tagline = "ASCAP WORK ID 925153205"
}
  \score {
    <<
      \flutePart
    >>
    \layout {
      indent = 25
      short-indent = 20
    }

    \midi {
      \tempo 4=60
    }
  }
}