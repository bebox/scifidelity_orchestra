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
  markup-system-spacing #'padding = #3
  system-system-spacing #'padding = #5
  line-width = 180\mm
  top-margin = 10\mm
  bottom-margin = 14\mm
}

\header {
  title = \markup { \override #'(font-name . "Dom Casual") \fontsize #4 "ISKRENA OSOBA" }
  %piece = \markup { \fontsize #3 "" }
  poet = \markup { \fontsize #1 "" }
  composer = \markup { \fontsize #1 "STJEPAN HORVAT" }
  %tagline = ""
}

bass = \relative c' {
  \jazzOn
  \set Staff.instrumentName = "Bass"
	\clef bass
  \key f \major
  \numericTimeSignature
  %\tempo "130 BPM"
	c,2 b' |
	f2 c4 b' |
	\time 5/8
	f4 c8 b' f |
	\time 4/4
	as,2 ges' |
	des2 as4 ges' |
	\time 5/8
	des4 as8 ges' des |
}

sax = \relative c'' {
  \jazzOn
  \set Staff.instrumentName = "Sax"
	\clef treble
  \key f \major
  \numericTimeSignature
  %\tempo "130 BPM"
	r1 | r4 r8 g8 ~ g8 g4 as8 ~ |
	as8 b4 g4. |
	ges1 ~ |
	ges4. ges8 ~ ges ges4 as8 ~ |
	as8 ges ~ ges4. |
}
akordi = \chordmode {
  %\semiGermanChords
  \set chordChanges = ##t
}

\score {
  \new StaffGroup <<
    \new ChordNames \akordi
		\new Staff \sax
    \new Staff \bass
  >>
  \layout { 
    indent = 9
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
