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
    s2 s8.\stopTextSpan s16

  \mark \default %%%%% D %%%%%
    \time 5/4
    s4 % figure out placement later lmao \tempo 4=45
    s4*5
    \time 4/4
}