hornF = \relative c' {
  \time 4/4
  \tempo " = 60"
  \key f \major

  \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet

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