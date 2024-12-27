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
  
   \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet
}

flute = \relative c'' {
  \global
  % Music follows here.
   \repeat unfold 9 {r1} r2
   \override Hairpin.circled-tip = ##t
    a2\< ~ a1\!\pp ~ a1 ~ a1 ~ a2.\> r4\! r1
     
  \tempo \markup { "rit. " } d,4 (e16 [f16 g16 a16 a8] \acciaccatura g8 a8) r4
  
  r4 f8(\mp\> g8 a4 g8. a32 g32 c,2) r2\!
  
  \override Hairpin.circled-tip = ##f
  d'8(\p\> a8 g4) f4 e4
  e8( f8 g4 a2)
  g2(\!\ppp a4 d4)
  c2. a'4
  
  \key ees \major  
   
}

clarinet = \relative c'' {
  \global
  \transposition bes
  % Music follows here.
  
  \repeat unfold 8 {r1}
  \mark \default
  a2.\p^"solo espressivo"( g4 g2 f2)
  a2.( g4 g2 f2)
  a2.( g4 g2 f2) 
  g2.( f4 \break e2.) r4

  \override Hairpin.circled-tip = ##t
  a8(\mp\> f8 ~ f2. ~ f8) r8\!
  g8(\< a g f e f) 
  
  \once \override Hairpin.circled-tip = ##f
  bes(\!\mp\> c bes2.)
  \parenthesize g8(\! f8\p g4 e2) 
  
  g2( a2) r4 c8( bes a g a4)
  
  \key ees \major
}

hornF = \relative c' {
  \global
  \transposition f
  
  a2.\p^"solo espressivo"( g4 g2 f2)
  a2.( g4 g2 f2)
  g2.( f4 f2 e2)
  g2.( f4 e2.) r4
  
  
  \once \override Hairpin.circled-tip = ##t
  a1\>\pp ~ a1 ~ a2.\!
  
  r4 \repeat unfold 3 {r1}
  
  g1( ~ g2\pp a4) r4
  
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
