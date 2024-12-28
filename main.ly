\version "2.24.2"

\include "articulate.ly"

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
\include "04_euphonium.ly"

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
