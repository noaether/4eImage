\include "00_dynamics.ly"

clarinet = \relative c'' {
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
  e4( a4 c2) d1\<
  %\time 3/4
  bes4--\mf a4-- a8( g8)
  a4-- c4-- a8( bes8)
  d2-- a8( bes8)
  f'4-- f8--([ e--] d--[ c--])
  c--[\mf\< c--] d--[ c--] d--[ c--]
  c--[ d--] e--[ f--] e--[ d--]\key c \major
  g,--[\> a--] b--[ c--] d--[ e--] c2.(\mf f4.~f8 e8 d8 e2. a,2.\>)
  f8\p \repeat unfold 23 { f8-- }
  \key f \major
  d'8--\< \repeat unfold 11 { d8-- } c8--\mf\> \repeat unfold 11 { c8-- } 
  f,8\p\< \repeat unfold 11 { f8-- } f8--\mf\> \repeat unfold 11 { f8-- } 
  f8\pp\< a f a f a a\mf\> f a f a f
  f8\pp\< a f a f a a\mf\> f a f a f
  bes([\p d]) bes([ d]) bes([ d])
  d([ bes]) d([ bes]) d([ bes])
  \repeat unfold 3 { \relative c' bes'([ f'])}
  \repeat unfold 3 { d([ bes]) }
  \repeat unfold 3 { d([ f])}
  \repeat unfold 3 { f([ d]) }
  \repeat unfold 3 { g([ d]) }
  bes([ f']) bes([ f]) bes([ f])
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