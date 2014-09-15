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
                  (/ myStaffSize 20)
                 )
    )
  markup-system-spacing #'padding = #0
  system-system-spacing #'padding = #3
  line-width = 180\mm
  top-margin = 10\mm
  bottom-margin = 14\mm
}

\header {
  title = \markup { \override #'(font-name . "Dom Casual") \fontsize #4 "Samba de mi" }
  %piece = \markup { \fontsize #3 "" }
  poet = \markup { \fontsize #1 "" }
  composer = \markup { "ROBERT PAJICH" }
  %tagline = ""
}

instrument = \relative c'' {
  \jazzOn
  %\set Staff.instrumentName = "Clarinet"
  \set Staff.instrumentName = "Clr in Es"
  \key es \major
  %\numericTimeSignature
  \tempo 4 = 133
%	\mark \markup { \hspace #35 \fontsize #-3 "Bass solo samba rhythm, 2nd time drum enter"}
	%\bar ".|:"
	%r1^\markup {\fontsize #-4 "Bass solo samba rhythm, 2nd time drum enter"} |
	%r1 |
	%r1 |
	%r1 | \break
	%\bar ":|."
	\mark \markup { \override #'(thickness . 3)
								  \box
									\line { A }
								}
	R1*12 \break

	%\mark \default
	\mark \markup { \override #'(thickness . 3)
								  \box
									\line { B }
								}
	r2. d4 ~ |
	d2. c4 |
	b4. as8 ~ as2 ~ |
	as2. r4 | \break
	r8 d8 c es r8 d8 r8 c8 |
	r8 f,4. g4 as8 g ~ |
	g1 ~ |
	g4 r2. |
	<< { r8 g'8\f f g4. es4 |
	f4.\p\glissando d8_\markup {\italic "rit."} ~ d2 | }
	\\
	{ r8 <es c>8 <d b> <es c>4. <c as>4 |
	<d b>4.\glissando <b g>8 ~ <b g>2 |
	}
	>>
	r8_\markup { \italic "a tempo" } c as4 g8 f g es ~ |
	es2 r2 |
	\bar "|."
}

akordi = \chordmode {
  %\semiGermanChords
  \set chordChanges = ##t
	es1:maj7.11+ | s1*11 |
	c1:m7 | c:m7 | f:m7 | f:m7 |
	b1:7 | b:7 |
	es1:maj7 | es1:maj7 | as1:maj7 |	
	g2:m7 fis:dim |
	f2:m7 b:7 | es:maj7 g:7 |
}
%ham = \markup { "H" } %hammer
banjo = \relative c' {
	\jazzOn
  \key es \major
  \set Staff.instrumentName = "Banjo"
es'8 g b d ( a) g b a g b a g
es8 g b d a g b a g b a g
es8 g b d a g b a g b a g
es8 g b d a g b a g b a g
es8 g b d a g b a g b a g
es8 g b d a g b a g b a g
es8 g b d a g b a g b a g
es8 g b d a g b a g b a g
}

bass = \relative c'' {
	\jazzOn
  \key es \major
  \set Staff.instrumentName = "Bass"
	\clef bass
	R1*4 |
	r2. g4 ( ~ |
	g2 f4 ) as4 ( ~ |
	as4\glissando g2-^ ) c,4 ~ |
	c2 r4 c4 ( |
	d4 es4 ) d2\glissando |
	as1\glissando f2\glissando d2 ~ |
	d2\glissando g,2 |
}

\score {
  \new StaffGroup <<
    \new ChordNames \akordi
    %\new Staff \instrument
    \new Staff { \transpose es c \instrument }
    \new Staff \banjo
		\new Staff \bass
    %\new Staff \instrument
  >>
  \layout { 
    indent = 10
  }
  \midi { \tempo 4 = 133 }
}

%\markup { \fontsize #-1 "(Raspisano za “Scifidelity Jazz Orchestra”)" }
%\markup { \sans "(Example taken from Frank Sikora’s “Neue Jazz-Harmonielehre”, p. 264)" }

%{
convert-ly (GNU LilyPond) 2.17.95  convert-ly: Processing `'...
Applying conversion: 2.17.0, 2.17.4, 2.17.5, 2.17.6, 2.17.11, 2.17.14,
2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27, 2.17.29
%}
