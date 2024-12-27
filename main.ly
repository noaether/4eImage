\version "2.24.2"

\header {
  title = "4e Image"
  subtitle = "Exposition Immersive"
  composer = "Noa St-Onge (ASCAP)"
  copyright = "Copyright (c) 2024"
  % Remove default LilyPond tagline
  tagline = "ASCAP WORK ID 925153205"
}

global = {
  \time 4/4
  \tempo "Andante [ = 60]"
  \key f \major

  \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet
}

\include "01_flute.ly"
\include "02_clarinet.ly"

hornF = \relative c' {
  \global
  \transposition f

  a2.\p^"solo espressivo"( g4 g2 f2)
  a2.( g4 g2 f2)
  g2.( f4 f2 e2)
  g2.( f4 e2.) r4


  \once \override Hairpin.circled-tip = ##t
  a1\>\pp ~ a1 ~ a2.

  r4\! \repeat unfold 3 {r1}

  \once \override Hairpin.circled-tip = ##t
  g1\<( ~ g2\!\pp a4) r4

  a2.\p^"espressivo"( g4 g2 f2)
  g2. (f4 f2 e2)
  g2. (f4 f2 e2\<)

  \key ees \major
  g2.\!\mf^"metallic"( f4 e2.)

}

euphonium = \relative c {
  \global

  \repeat unfold 12 {r1} r4

  \once \override Hairpin.circled-tip = ##t
  a'2.\< ~ a1\!\pp ~ a1 ~ a2. r4

  d,2\pp\<( f2 c1\!)\>
  f2\!\p\<( d2 c2\!\mf\> a2) a1\!\mp

  r4 a'8(\<\p bes a g f a
  \key ees \major
  aes1\!\mp^"luminoso")
}

hornFPart = \new Staff \with {
  instrumentName = "Horn in F"
  shortInstrumentName = "Hn.F."
  midiInstrument = "french horn"
} \hornF

euphoniumPart = \new Staff \with {
  instrumentName = "Euphonium"
  shortInstrumentName = "Euph."
  midiInstrument = "trombone"
} { \clef bass \euphonium }

\score {
  <<
    \flutePart
    \transpose c c \clarinetPart
    \transpose c c \hornFPart
    \euphoniumPart
  >>
  \layout {
    indent = 25
    short-indent = 20
  }
  \midi {
    \tempo 4=60
  }
}
