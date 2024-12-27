\version "2.24.2"

\header {
  title = "4e Image"
  subtitle = "Exposition Immersive"
  composer = "Noa St-Onge (ASCAP)"
  copyright = "Copyright (c) 2024"
  % Remove default LilyPond tagline
  tagline = ##f
}

global = {
  \time 4/4
  \tempo "Andante [ = 60]"
  \key f \major
}

flute = \relative c'' {
  \global
  % Music follows here.
   \repeat unfold 9 {r1} r2
   \override Hairpin.circled-tip = ##t
    a2\< ~ a1\!\pp ~ a1 ~ a1 ~ a2.\> r4\! r1
     
  d,4 (e16 [f16 g16 a16 a8] \slashedGrace g8 a4) r4
   
}

clarinet = \relative c'' {
  \global
  \transposition bes
  % Music follows here.
  
  \repeat unfold 8 {r1}
  a2.\p^"solo espressivo"( g4 g2 f2)
  a2.( g4 g2 f2)
  a2.( g4 g2 f2) 
  g2.( f4 \break e2.) r4

  
}

hornF = \relative c' {
  \global
  \transposition f
  
  a2.\p^"solo espressivo"( g4 g2 f2)
  a2.( g4 g2 f2)
  g2.( f4 f2 e2)
  g2.( f4 e2.) r4 \break
  
  
  \override Hairpin.circled-tip = ##t
  a1\>\pp ~ a1 ~ a2.\!
  
  r4 \repeat unfold 3 {r1}
  
  g1( ~ g2\pp a4) r4
  
}

euphonium = \relative c {
  \global
  % Music follows here.
  
  \repeat unfold 12 {r1} r4
  
  \override Hairpin.circled-tip = ##t
  a'2.\< ~ a1\!\pp ~ a1 ~ a2. r4
}

flutePart = \new Staff \with {
  instrumentName = "Flute"
  shortInstrumentName = "Fl."
  midiInstrument = "flute"
} \flute

clarinetPart = \new Staff \with {
  instrumentName = "Clarinet"
  shortInstrumentName = "Cl."
  midiInstrument = "clarinet"
} \clarinet

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
    \transpose f c' \hornFPart
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
