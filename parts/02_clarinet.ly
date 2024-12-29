\include "00_dynamics.ly"

clarinet = \relative c'' {
  \textLengthOn

  \time 4/4
  \tempo " = 60"
  \key f \major

  \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet

  \repeat unfold 8 {r1}
  a2.\p^"solo espressivo"( g4 g2 f2)
  a2.( g4 g2 f2)
  a2.( g4 g2 f2)
  g2.( f4 e2.) r4

  %%%%% b %%%%%
  \override Hairpin.circled-tip = ##t
  a8(\mp\> f8 ~ f2. ~ f8) r8\<
  g8( a g f e f)

  \override Hairpin.circled-tip = ##f
  bes(\!\mp\> c bes2.)
  \parenthesize g8(\! f8\p g4 e2)

  g2( a2) r4 c8( bes a g a4)

  \key ees \major

  g2.( f4 e2.\>) r4\p

  \slurUp
  r4 \xNotesOn g4 g4 f4 \xNotesOff e2.( f4\< %%%%% C %%%%%
  \key f \major
  g2.)\mf a4 d,1
  \slurNeutral
  d2( e4 g4 a2 g2)
  f2.( e4 e2 d4 d4)

  %%%%% D %%%%%
  %\time 5/4
  d2 d2.
  %\time 4/4
  f4( bes4 d2) e1\<
  %\time 3/4
  c4\mf bes4 bes8( a8)
}

clarinetPart = \new Staff \with {
  instrumentName = "Clarinet"
  shortInstrumentName = "Cl."
  midiInstrument = "clarinet"
} \clarinet

clarinetBookPart = \new Staff \with {
  instrumentName = "Clarinet"
  shortInstrumentName = ""
  midiInstrument = "clarinet"
} \clarinet

\book {
  \bookOutputName "Clarinet"
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
      \transpose bes, c \clarinetBookPart
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