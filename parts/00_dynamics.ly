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

  \mark \default %%%%% D %%%%%
    \time 5/4
    \tempo 4=45
    s4 % this doesnt work MAYBE NOW??? \tempo 4=45
    s4*4
    \time 4/4
    s4 \tempo 4=60 s4^\atempo s2
    s1
    \time 3/4
    s2.*2
      \override TextSpanner.bound-details.left.text = \markup \bold \large \upright "accel. "
    s2.\startTextSpan
    s2.*2
    s2.
    s2 s8\stopTextSpan
    s8

  %%%%% E %%%%%
  \mark \default
    \time 6/8
}