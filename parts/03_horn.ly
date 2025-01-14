\include "00_dynamics.ly"

soloEspressivo = \markup { \italic solo espressivo \dynamic p }

hornF = \relative c' {
  \time 4/4
  \tempo " = 60"
  \key f \major

  \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet

  a2.-\soloEspressivo ( g4 g2 f2)
  a2.( g4 g2 f2)
  g2.( f4 f2 e2)
  g2.( f4 e2.) r4

  %%%%% A %%%%%
  \once \override Hairpin.circled-tip = ##t
  a1\>\pp ~ a1 ~ a2.

  r4\! \repeat unfold 3 {r1}

  \once \override Hairpin.circled-tip = ##t
  g1\<( ~ g2\!\pp a4) r4

  %%%%% B %%%%%
  a2.\p^"espressivo"( g4 g2 f2)
  g2. (f4 f2 e2)
  g2. (f4 f2 e2\<)

  \key ees \major
  g2.\!\mf^"metallic"( f4 e2.) g4(\> d1)\mp

  r4 g8(\< aes8 g8 f8 ees8 f8)

  %%%%% C %%%%%
  \key f \major
  a2.\mf( g4 f2.) a4
  bes2.(\> a4 a2 g2)
  a2.(\mp g4 g2 f2)

  %%%%% D %%%%%
  %\time 5/4
  f2 g4 a8( bes8 d4)
  %\time 4/4
  bes8( a8 c2) bes4~bes4\< d4 e4 f4
  bes4\mf^"bring out" a4 a8( g8)
  f8\<( e8) e4-- e8( c8)
  d2.--( f2\!)
  d8--( c8-- g'2)\mf\<
  f8--( e8-- a2)
  e8--( d8-- \key c \major g2--)\> f4--
  f8\p
  \repeat unfold 11 { f8-- }
  \repeat unfold 6 { e8-- }
  e8\< e e d c b
  a2.\mf
  c4.~c4-. a8-- d2. a2.\>
  \key f \major
  f'8\p\< \repeat unfold 11 { f8-- } f8--\mf\> \repeat unfold 11 { f8-- } 
  bes,2.\mp bes8(-> d4~d4) c16( bes16 a2.\f^"with timbre"~a2.)
  d8\pp\< f d f d f f\mf\> d f d f d
  d8\pp\< f d f d f f\mf\> d f d f d

  %%%%% H %%%%%
  d8[(\pp\< f)] \repeat unfold 2 { d8[( f)] }
  \repeat unfold 3 { f[( a)] }
  d,2. e f g a bes\f
  d,1-\markup { \italic subito \dynamic pp }
}

hornFPart = \new Staff \with {
  instrumentName = "Horn in F"
  shortInstrumentName = "Hn.F."
  midiInstrument = "french horn"
} \hornF

hornFBookPart = \new Staff \with {
  instrumentName = "Horn in F"
  shortInstrumentName = ""
  midiInstrument = "french horn"
} \hornF

\book {
  \bookOutputName "Horn"
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
      \transpose f, c \hornFBookPart
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