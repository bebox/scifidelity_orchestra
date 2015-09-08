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
	%markup-system-spacing #'padding = #2
	system-system-spacing #'padding = #3
	line-width = 180\mm
	top-margin = 10\mm
	bottom-margin = 14\mm
}

\header {
	title = \markup { \override #'(font-name . "Dom Casual") \fontsize #4 "80's" }
	%piece = \markup { \fontsize #3 "" }
	%poet = \markup { \fontsize #1 "130 BPM" }
	composer = \markup { \fontsize #1 "Stjepan Horvat" }
	%tagline = ""
}

banjo = \relative c'' {
	\jazzOn
		\set Staff.instrumentName = "Banjo"
		\key f \major
		\tempo 4=130 
		%\mark \markup { \fontsize #-1 "130 BPM" }
	\mark \markup {
\hspace #-1
		\override #'(thickness . 3)
			\box
			\line { A }
	}

	c8 d c f ~ f c d c |
		c8 d c f ~ f c d c |
		c8 d c f ~ f c d c |
		c8 d c f ~ f c d c | \break
		\bar ".|:-||"
    \mark \markup {
      \override #'(thickness . 3)
        \box
        \line { B }
    }

		r4 r8 c8 d f a f ~ |
		f2 r8 f8 g a |
		b4 a8 f ~ f8 d4 c8 ~ |
		c1 |
		\bar ":|."
		\mark \markup {
			\override #'(thickness . 3)
				\box
				\line { C }
		}

	cis2 ~ cis8 d e d ~ |
		d8 e4 f8 ~ f2 |
		g2 ~ g8 d f e ~ |
		e1 |
		cis2 ~ cis8 d e d ~ |
		d8 e4 f8 ~ f2 |
		g2 ~ g8 a b c |
		r1 |
		\bar "|."
}

sopran = \relative c'' {
	\jazzOn
		\set Staff.instrumentName = "Sopran"
		\key f \major
		r4 d4 c8 d4 c8 ~ |
		c1 |
		r4 d4 c8 d4 c8 ~ |
		c1 |
}

alt = \relative c'' {
	\jazzOn
		\set Staff.instrumentName = "Alt"
		\key f \major
		r4 c4 a8 c4 b8 ~ |
		b1 |
		r4 c4 a8 c4 g8 ~ |
		g1 |
}

bass = \relative c, {
	\jazzOn
		\set Staff.instrumentName = "Bass"
		\key f \major
		\clef bass
		f4. f8 a4. a8 |
		b4. a8 ~ a b a f | \noBreak
		g4. g8 b4. b8 |
		c8 d4 c8 ~ c a g4 |
}

akordi = \chordmode {
	%\semiGermanChords
		\set chordChanges = ##t
		f1 | b | g:m | c |
		f1 | b | g:m | c |
		a1 | d:m | g/h | b |
		a1 | d:m | g:7 | c |
}

\score {
	\new StaffGroup <<
		\new ChordNames \akordi
		\new Staff \banjo
		\new Staff \sopran
		\new Staff \alt
		\new Staff \bass
		>>
		\layout { 
			indent = 9
		}
	\midi { \tempo 4 = 130 }
}

\markup { \fontsize #-1 "(Raspisano za “Scifidelity Jazz Orchestra”)" }
%\markup { \sans "(Example taken from Frank Sikora’s “Neue Jazz-Harmonielehre”, p. 264)" }

%{
	convert-ly (GNU LilyPond) 2.17.95  convert-ly: Processing `'...
		Applying conversion: 2.17.0, 2.17.4, 2.17.5, 2.17.6, 2.17.11, 2.17.14,
						 2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27, 2.17.29
							 %}
