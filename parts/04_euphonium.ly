\include "00_dynamics.ly"

euphonium = \relative c {
  \time 4/4
  \tempo " = 60"
  \key f \major

  \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet

  \repeat unfold 8 { r1 }
  \repeat unfold 4 { r1 } r4

  \once \override Hairpin.circled-tip = ##t
  a'2.\< ~ a1\!\pp ~ a1 ~ a2. r4

  d,2\pp\<( f2 c1)\>
  f2\!\p\<( d2 c2\!\mf\> a2) a1\!\mp

  r4 a'8(\<\p bes a g f g
  \key ees \major
  aes1\!\mp^"luminoso")

  r4 g8(\> aes g f ees f) g2.(\pp f4 ees1)\<

  %%%%% C %%%%%
  \key f \major

  c2.(\mp bes4 bes2 a2)
  g2.( f4 f2 e2)
  f2( d'2 c4 g8
  a8 bes8 c8 d8 e8)

  %%%%% D %%%%%
  %\time 5/4
  f4\! c4 g2 a4
  %\time 4/4
  c4 a2 bes4
  a2\< bes4 c4
  %\time 3/4
  f,2.--\mf\< a2-- f4 bes2.-- c2.-- a2.--\f\< bes2.-- \key c \major c2.--\­> c8--\p
}

euphoniumPart = \new Staff \with {
  instrumentName = "Euphonium"
  shortInstrumentName = "Euph."
  midiInstrument = "tuba"
} { \clef bass \euphonium }

euphoniumBookPart = \new Staff \with {
  instrumentName = "Euphonium"
  shortInstrumentName = ""
  midiInstrument = "tuba"
} { \clef bass \euphonium }

\book {
  \bookOutputName "Euphonium"
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
      \globalDynamics
      \euphoniumBookPart
    >>
    \layout {
      indent = 25
      short-indent = 10
    }

    \midi {
      \tempo 4=60
    }
  }
}