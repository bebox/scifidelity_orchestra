\version "2.19.25"
\language "deutsch"

\header {
  title = "Por una Cabeza"
  subtitle = "Wedding Stefanie & Raimund in Graz 5.9.2015."
  composer = "Carlos Gardel"
  poet = "Tango"
}

\paper {
  indent = 0
}

global = {
  \key c \major
  \time 4/4
}

chordNames = \chordmode {
  \global
  \semiGermanChords
  % Chords follow here.
  \skip 2
  g1 | g | g | a:m |
  a1:m | d1 | d | g | g |
  g | g:7 | c | c2 c:m |
  g1/d | a2/e d | g1 |
  
  g1:m/b | d:m/a |
  es/g | b/f | c:m/es | g:m/b |
  a1 | es2:7 d:7 |
  a2 d:7 | g2
}

melody = \relative c'' {
  \global
  % Music follows here.
  \partial 2
  h8 c cis d |
  e8 d r4 cis8 d e fis |
  a8 g r4 h8 c a h |
  g8 a fis g fis4. d8 |
  c4 r4 c'8 h d c |
  a4 r4 a8 gis h a |
  fis4 r4 fis8 g gis a |
  h8 a fis d dis fis e c |
  h4 r4 h8 c cis d |
  e8 d r4 cis8 d e fis |
  a8 g r4 g8 a h g |
  a8 g a h a4. g8 |
  e'4 r4 a,8 g e c |
  h8 a h c es g f es |
  g4 d g8 a h g |
  a4 a fis8 g a fis |
  g4 r8 \teeny \stemUp d8 g4 d |
  
  \bar "||"
  %\mark \default
  \repeat volta 2 {
  b4 \normalsize \stemNeutral b' b  c8 d |
  d2 a |
  r4 g4 \times 2/3 {g4 a b} |
  b2 fis |
  r4 e4 \times 2/3 {e4 fis g} |
  g2 g8 a b g |
  }
  \alternative{
  {a4 a g8 a b g |
  b2 a |}
  {a4 a fis8 g a fis |
  g2   
  \bar "|."}
  }
}

verse = \lyricmode {
  % Lyrics follow here.
  
}

\score {
  <<
    \new ChordNames \chordNames
    \new Staff { \melody }
    \addlyrics { \verse }
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
