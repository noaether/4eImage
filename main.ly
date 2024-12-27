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
\include "03_horn.ly"

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
