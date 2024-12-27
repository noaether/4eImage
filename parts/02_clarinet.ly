clarinet = \relative c'' {
  \time 4/4
  \tempo " = 60"
  \key f \major

  \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet

  \repeat unfold 8 {r1}
  \mark \default
  a2.\p^"solo espressivo"( g4 g2 f2)
  a2.( g4 g2 f2)
  a2.( g4 g2 f2)
  g2.( f4 e2.) r4

  \mark \default
  \override Hairpin.circled-tip = ##t
  a8(\mp\> f8 ~ f2. ~ f8) r8\!
  g8(\< a g f e f)

  \once \override Hairpin.circled-tip = ##f
  bes(\!\mp\> c bes2.)
  \parenthesize g8(\! f8\p g4 e2)

  g2( a2) r4 c8( bes a g a4)

  \key ees \major
}

clarinetPart = \new Staff \with {
  instrumentName = "Clarinet"
  shortInstrumentName = "Cl."
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
      \transpose bes, c \clarinetPart
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