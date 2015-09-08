\version "2.17.29"

\include "../config/LilyJAZZ.ily"
\include "../config/AccordsJazzDefs.ly"
\language "deutsch"

myStaffSize = #20
#(set-global-staff-size myStaffSize)
#(set-default-paper-size "a4")

\paper {
  #(define fonts (make-pango-font-tree 
                  "LilyJAZZ Text" 
                  "DejaVu Sans Condensed" 
                  "lilyjazzchord" 
                  (/ myStaffSize 20)
                 )
    )
  markup-system-spacing #'padding = #0
  %system-system-spacing #'padding = #0
  line-width = 180\mm
  top-margin = 10\mm
  bottom-margin = 14\mm
}

%\layout {
%  \context {
%    \RemoveEmptyStaffContext
    % To use the setting globally, uncomment the following line:
    % \override VerticalAxisGroup.remove-first = ##t
%  }
%}


\header {
  title = \markup { \override #'(font-name . "Dom Casual") \fontsize #4 "THAT'S A PLENTY" }
  %piece = \markup { \fontsize #3 "" }
  poet = \markup { \fontsize #1 "Partitura" }
  composer = \markup { \fontsize #1 "POLLAUK-GILBERT 1914" }
  %tagline = ""
}

trumpet = \relative c'' {
\jazzOn
  \set Staff.instrumentName = #"Truba"
 % \set Staff.shortInstrumentName = #"Trp"
  \tempo 4 = 230
  \set Score.markFormatter = #format-mark-box-letters
  \mark \default
  \key f \major
  \repeat volta 2 {
  d8 d cis4 d cis |
  d cis8 d ~ d cis c h |
  b8 b a4 b a |
  b a8 b ~ b a g f |
  e4 b'( a2) |
  e4 b'8 a r2 | }
  \alternative{
  {d,8 d4 e8 f e4 d8 |
  e8 dis e a ~ a4 r4 }
  {d,8 e4 f8 e4. f8 |
  d4 r4 r4. g8
  }}

  \mark \default
  b8 g b4 g2 |
  r2 d'8 c ces b |
  a4 a8 a f2 |
  r2 r4. d8 |
  e8 f d dis e f g a |
  b b h4 c d( |
  a2) r2 |
  r2 c4 ces |
  b4 b g2 |
  r4 b8 fis g b g gis |
  a f d des c2 |
  r2 r4. f'8 ~ |
  f2 e4 d |
  c4 c ces8 b r4 |
  a4 a g8 f g4 |
  f1 |
  \bar ":|."

  \key b \major
  \mark \default
  \bar ":..:"
  \repeat volta 2 {
  d8 d es4 e f |
  g a b c |
  d4. g,8 ~ g2 |
  r2 r8 d'4. |}
  \alternative{
  {d4 d g,2 |
  d'4 d8 a ~ a2 |
  d8 des c ces b g d f |
  g4 ges8 f ~ f2 |
  }
  {d'4 g, d' g, |
  d'8 c d es d b c a |
  b f e f fis g gis a |
  }}
  b4 r4 r4

  %\key f \major
  \tuplet 3/2 { d8 d d } |
  \mark \default
  \bar "||"
  d4 r4 r4 \tuplet 3/2 {d8 d d } |
  d4 r4 r4 \tuplet 3/2 {d8 d d } |
  d4 r4 r2 |
  r2 r4 \tuplet 3/2 {f,8 a c } |
  f4 r4 r4 \tuplet 3/2 {f,8 a c} |
  f4 r4 r4 \tuplet 3/2 {f,8 a c} |
  f4 r4 r2 |
  r1 |
  f2 r4 e4 |
  es2 r4 d8 d |
  c c b4 a4 g |
  f r4 r2 |
  \set Score.repeatCommands = #'((volta #f) (volta "3.") end-repeat)

  c'4 d e f |
  fis g gis8 a r4 |
  \set Score.repeatCommands = #'((volta #f))
  r4 b2. ~ |
  b1 |
  \bar "||"
  b4 r4 r8 b4. |
  b4 r4 r8 b4. |
  h4 r4 r8 h4. |
  h4 r4 r8 h4. |
  b4 r4 r8 b4. |
  a4 g8 f es d c b |
  a4 g f e |
  f4 r4 r8 a'4. |
  b4 r4 r8 b4. |
  b4 r4 r8 b4. |
  h4 r4 r8 h4. |
  h2 g,8 a b c |
  \break
  d4 b d g, |
  r8 f4 f8 g g a4 |
  b8 as4. g4 ges |
  f8 e es cis d b' r4 |
  R1*3 |
  r2 r8 f'8 fis4 |
  g4 fis4 g gis |
  a2 f2 |
  b1 ~ |
  b1 ~ |
  b1 ~ |
  b2 r2 |
  \bar "||"
}

sax = \relative c'' {
\jazzOn
  \set Staff.instrumentName = #"Sax"
  %\set Staff.shortInstrumentName = #"Sax"
  \key f \major
  f8 f e4 f e |
  f e8 f ~ f f e es |
  d d cis4 d cis |
  d4 cis8 d ~ d c b a |
  g4 e'( cis2) |
  g4 e'8 cis r2 |
  R1*20 |

  R1*11 |

  r2 r4 \tuplet 3/2 {f8 f f} |
  f4 r4 r4 \tuplet 3/2 {f8 f f } |
  f4 r4 r4 \tuplet 3/2 {f8 f f } |
  f4 r4 r2 |
  r2 r4 \tuplet 3/2 {a,8 c f } |
  a4 r4 r4 \tuplet 3/2 {a,8 c f} |
  a4 r4 r4 \tuplet 3/2 {a,8 c f} |
  a4 r4 r2 |
  r1 |
  f1\trill ~ |
  f1 |
  s1 |
  s1 |
  s1 |
  s1 |

  r4 f2. ~ |
  f1 |
  f4 r4 r8 f4. |
  f4 r4 r8 d'4. |
  d4 r4 r8 d4. |
  d4 r4 r8 d4. |
  d4 r4 r8 d4. |
  es1 |
  r1 |
  r2 r8 f,4. |
  f4 r4 r8 f4. |
  f4 r4 r8 d'4. |
  d4 r4 r8 d4. |
  d2 r2 |
  R1*10 |
  d1 ~ |
  d1 ~ |
  d1 ~ |
  d2 r2 |
}

trombon = \relative c {
\jazzOn
  \set Staff.instrumentName = #"Trombon"
  %\set Staff.shortInstrumentName = #"Tbn"
  \key f \major
  \clef bass
  R1*38 |

  r4 \tuplet 3/2 {d8 d d} d4 r4 |
  r4 \tuplet 3/2 {d8 d d} d4 r4 |
  r8 d4. f4 a8 d ~ |
  d d a4 d, r |
  r4 \tuplet 3/2 {f8 f f} f4 r4 |
  r4 \tuplet 3/2 {f8 f f} f4 r4 |
  r8 f4. a4 c8 f ~ |
  f f c4 a r4 |
  f'2 a4. g8 |
  f4 e es8 d c b |
  f4 r4 f2 ~ |
  f1\glissando|
  b4 r2. |
  r1 |

  \ottava #1
  r4 des'2. ~ |
  des1 |
  \ottava #0
  f,4 r4 r8 e4. |
  f4 r4 r8 fis4. |
  g4 r4 r8 fis4. |
  g4 r4 r8 g4. |
  e4 r4 r8 g4. |
  es1 |
  R1*9 |
  r2 r4 r8 b8 |
  des4 des des des |
  c b b8 g s4 |
  s1 |
  s1 |
  R1*6 |
}

akordi = \chordmode {
  \set chordChanges = ##t
  d1:m | d1:m | d:m | d:m |
  a:7 | a:7 | d:m | a:7 |
  d2:m a2:7 | d1:m |

  c:7 | c:7 | f | f |
  c:7 | c:7 | f | f |
  c:7 | c:7 | f | f |
  h2:6 h:dim | f d:7 | g:7 c:7 | f1 |

  b1 | b | g:7 | g:7 |
  c:7 | f:7 | b2 des:dim | c:m7 f:7 |
  c1:7 | f1:7 | b1 | b1 |

  \repeat unfold 12 { r1 }
  c1:7 | f1:7 | b1 | b1 |
  b1 | b | g:7 | g:7 |
  c:7 | f:7 | b2 des:dim | c:m7 f:7 |
  b1 | b | g:7 | g:7 |
  c1:7 | f1:7 | b1 | b1 |
  r1 | r1 | r1 | r1 |
  c:7 | f:7 | b1 | b1 | f:7 | b1 |

}

%\score {
%  \new StaffGroup <<
%    \new ChordNames \akordi
%    \new Staff \instrument
%  >>
%  \layout { 
%    indent = 9
%  }
%  \midi { \tempo 4 = 130 }
%}

\score {
  \new StaffGroup <<
  \new ChordNames { \akordi }
  \new Staff { \transpose c d \trumpet }
  \new Staff { \transpose c d \sax }
  %\new Staff {  \trumpet }
  %\new Staff {  \sax }
  \new Staff { \trombon }
  >>
  \midi {}
  \layout {}
  }

%\markup { \fontsize #-1 "(Raspisano za “Scifidelity Jazz Orchestra”)" }
%\markup { \sans "(Example taken from Frank Sikora’s “Neue Jazz-Harmonielehre”, p. 264)" }

%{
convert-ly (GNU LilyPond) 2.17.95  convert-ly: Processing `'...
Applying conversion: 2.17.0, 2.17.4, 2.17.5, 2.17.6, 2.17.11, 2.17.14,
2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27, 2.17.29
%}
