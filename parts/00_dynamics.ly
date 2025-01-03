atempo = \markup \bold \large \upright "a tempo"

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

  %%%%% E %%%%%
  \mark \default
    \time 6/8
    \tempo 4.=60
    s2.*8

  %%%%% F %%%%%
  \mark \default
    s2.*8

  %%%%% G %%%%%
  \mark \default
    s2.*4
  
  %%%%% H %%%%%
  \mark \default
    \time 3/4
}