atempo = \markup \bold \large \upright "a tempo"
tempoPrimo = \markup \bold \large \upright "tempo primo"

globalDynamics = \new Dynamics {
  \override TextSpanner.bound-details.left.text = \markup \bold \large \upright "rit. "
  % startTextSpan and stopTextSpan always correspond to ritardando
  s1*8

  \mark \default
    s1*7 s4\startTextSpan s2 s4\stopTextSpan

  \mark \default
    s4 s4^\atempo s2
    s1*9

  \mark \default
    s1*5
    s4\startTextSpan
    \set Score.tempoHideNote = ##t
    \tempo 4=58 s8
    \tempo 4=56 s8
    \tempo 4=53 s8
    \tempo 4=51 s8
    \tempo 4=49 s8.\stopTextSpan
    \tempo 4=47 s16
    \set Score.tempoHideNote = ##f

  \mark \default %%%%% D %%%%%
    \time 5/4
    s16\tempo 4=45
    s16 s8
    s4*4
    \time 4/4
    \set Score.tempoHideNote = ##t
    s4 \tempo 4=60 s4^\atempo s2
    \set Score.tempoHideNote = ##f
    s1
    \time 3/4
    s2.*2
      \override TextSpanner.bound-details.left.text = \markup \bold \large \upright "accel. "

    \set Score.tempoHideNote = ##t
    s4\startTextSpan s4\tempo 4=61 s4\tempo 4=63
    s4\tempo 4=64 s4\tempo 4=66 s4\tempo 4=67
    s4\tempo 4=69 s4\tempo 4=70 s4\tempo 4=72
    s4\tempo 4=73 s4\tempo 4=76 s8\tempo 4=79 s8\stopTextSpan \tempo 4=90
    s2.
    \set Score.tempoHideNote = ##f

  %%%%% E %%%%%
  \mark \default
    \time 6/8
    \tempo 4.=60
    s2.*8^\markup { \concat { \char ##x1d15f \char ##x1d16d "=" "60" } }

  %%%%% F %%%%%
  \mark \default
    s2.*8

  %%%%% G %%%%%
  \mark \default
    \set Score.tempoHideNote = ##t
    s4*2\tempo 4=93
    s4\tempo 4=95
    s4\tempo 4=98
    s4\tempo 4=101
    s4\tempo 4=104
    s4\tempo 4=106
    s4\tempo 4=109
    s4\tempo 4=112
    s4\tempo 4=114
    s4\tempo 4=117
    s4\tempo 4=120
    \set Score.tempoHideNote = ##f

  %%%%% H %%%%%
  \mark \default
    \tempo 4=120
    \time 3/4
    \set Score.tempoHideNote = ##t
    s2.*2
    s4\tempo 4=122
    s4\tempo 4=124
    s4\tempo 4=126
    s4\tempo 4=128
    s4\tempo 4=130
    s4\tempo 4=132
    s4\tempo 4=134
    s4\tempo 4=136
    s4\tempo 4=138
    s4\tempo 4=140
    s4\tempo 4=142
    s4\tempo 4=144\set Score.tempoHideNote = ##f
    s2.*2

  \mark \default
    \tempo 4=60 s2.^\tempoPrimo

}