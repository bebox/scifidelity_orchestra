\version "2.17.29"

\include "../config/LilyJAZZ.ily"
\include "../config/AccordsJazzDefs.ly"
\language "deutsch"

myStaffSize = #24
#(set-global-staff-size myStaffSize)
#(set-default-paper-size "a4")

\paper {
  #(define fonts (make-pango-font-tree 
                  "LilyJAZZ Text" 
                  "DejaVu Sans Condensed" 
                  "lilyjazzchord" 
                  (/ myStaffSize 23)
                 )
    )
  markup-system-spacing #'padding = #4
  system-system-spacing #'padding = #4
  line-width = 180\mm
  top-margin = 10\mm
  bottom-margin = 14\mm
}

\header {
  title = \markup { \override #'(font-name . "Dom Casual") \fontsize #4 "O KUKA" }
  %piece = \markup { \fontsize #3 "" }
  poet = \markup { \fontsize #1 "" }
  composer = \markup { \fontsize #1 "Robert Pajich" }
  %tagline = ""
}

instrument = \relative c'' {
  \jazzOn
  %\set Staff.instrumentName = "Instrument"
  \key es \major
  %\numericTimeSignature
  %\tempo "130 BPM"

	\mark \markup {
		  \override #'(thickness . 2)
			  \box
				  \line { A }
	}

  \bar ".|:"
  r1 | r1 | r1 | r1 | \break
  \bar ":|."
  
	\mark \markup {
		  \override #'(thickness . 2)
			  \box
				  \line { B }
	}

  \repeat volta 2 {
  r2 d4 c |
  g2 ~ g8 f ~ f4 |
  g1 |
  r2 r8 g4 f8 |
  g1 |
  b4. as8 ~ as4 d,4 |
  g1 |
  r8 f'8 es as, d4 c |
  g2 ~ g8 f g4 |
  a4. g8 ~ g4 d4 |
  e1 |
  }
  \alternative{
  {g4 g2. |}
  {r8 e4. ~ e4 d4 |}
  }
   a'4. d,8 d2 |
   es2 f8 g d' c |
   d4. a8 a2 |
   r2 r8 a8 c b |
   g8 b as4 r8 f as g |
   es4. d8 ~ d2 |
   r8 g8 f b ~ b4 as4 |
   g2 ~ g4. g8 |
   \bar "|."
}

akordi = \chordmode {
  %\semiGermanChords
  \set chordChanges = ##t
  f1:m6 | g2:m7.5- c2:7 | f1:m7 | g2:m7.5- c2:7 |
  r1 | r1 | f:m6 | g2:m7.5- c2:7 | f1:m6 |
  b1:7 | es:maj7 | es:maj7 | des:maj7 |
  g1:7 | c:maj7 | g:m7.5- | c:maj7 | b:maj7 |
  c2:m7 f:7 | b1:maj7 | b2:maj7 es:7 |
  b2:maj7 g:m7 | f:m7 f:m7.5- | g:m7.5- c:7 |
  f:m6
}

\score {
  \new StaffGroup <<
    \new ChordNames \akordi
    \new Staff \instrument
  >>
  \layout { 
    indent = 0
  }
  \midi { \tempo 4 = 130 }
}

%\markup { \fontsize #-1 "(Raspisano za “Scifidelity Jazz Orchestra”)" }
%\markup { \sans "(Example taken from Frank Sikora’s “Neue Jazz-Harmonielehre”, p. 264)" }


%{
convert-ly (GNU LilyPond) 2.17.95  convert-ly: Processing `'...
Applying conversion: 2.17.0, 2.17.4, 2.17.5, 2.17.6, 2.17.11, 2.17.14,
2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27, 2.17.29
%}
