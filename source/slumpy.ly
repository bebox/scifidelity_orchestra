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
  %markup-system-spacing #'padding = #6
  system-system-spacing #'padding = #2
  %score-system-spacing #'padding = #2
  line-width = 180\mm
  top-margin = 10\mm
  bottom-margin = 14\mm
}

\layout {
  \context {
    \RemoveEmptyStaffContext
    % To use the setting globally, uncomment the following line:
     \override VerticalAxisGroup.remove-first = ##t
  }
}


\header {
  title = \markup { \override #'(font-name . "Dom Casual") \fontsize #4 "SLUMPY CAT'S" }
  %piece = \markup { \fontsize #3 "ŠLAMPAVE MAČKE" }
  subtitle = \markup { \override #'(font-name . "Dom Casual")\fontsize #1 "(\"ŠLAMPAVE MAČKE\")" }
  poet = \markup { \fontsize #1 "" }
  composer = \markup { \fontsize #1 "Stjepan Horvat" }
  %tagline = ""
}

instrument = \relative c' {
  \jazzOn
  \set Staff.instrumentName = "Es"
	\set Score.markFormatter = #format-mark-box-letters
  \key e \major
  %\numericTimeSignature
  %\tempo "130 BPM"
	%\mark \default
	\mark \markup {
		  \override #'(thickness . 3)
			  \box
				  \line { A }
	}
	his'8 cis his cis fisis, gis fisis gis |
	gis8 a gis a dis,8 e dis e ~ |
	e8 cis' his cis fisis, gis fisis gis |
	gis8 a gis dis ~ dis2 |
	his'8 cis his cis fisis, gis fisis gis |
	gis8 a gis a dis,8 e dis e |
	cis8 dis e fis g a ais his |
	cis8 c b a g fis e4 | \break
	\bar "||"

	%\mark \default
	\mark \markup {
		  \override #'(thickness . 3)
			  \box
				  \line { B }
	}
	his'8 cis his cis fisis, gis fisis gis |
	gis8 a gis a dis,8 e dis e |
	r8 cis' his cis fisis, gis fisis gis |
	r8 cis \times 2/3 {cis gis h ~ } h2 | 
	his8 cis his cis fisis, gis fisis gis |
	gis8 a gis a dis,8 e dis e |
	cis8 dis e fis g a ais his |
	cis8 c b a g fis e4 |
	\bar "|."
}

trombone = \relative c' {
\jazzOn
  \set Staff.instrumentName = "Trb"
  \key e \major
  \clef bass
	R1*8 |
  r4 dis8 e c cis h4
  | % 2
  a cis r4 a8 h
  | % 3
  r4 dis8 e c cis h4
  | % 4
 a8 gis' \times 2/3 { gis8 cis, gis ~ } gis2 |
  | % 5
	r1 | r1 | r1 | r1 |
}

trumpet = \relative c' {
\jazzOn
  \set Staff.instrumentName = "Trp"
  \key e \major
	R1*8 |
  dis'8 e gis4 r4 dis8 e
  | % 2
  dis e dis e a, h cis4
  | % 3
  r8 e gis4 r4 dis8 e
  | % 4
  r8 a8 \times 2/3 { a8 e fis ~ } fis2 |
  | % 5
	r1 | r1 | r1 | r1 |
}

%instrumentB = \relative c' {
%	s1*8 |
%	dis8 e dis e his cis his cis |
%	cis8 e cis e a, h a h |
%	r1 |
%	r8 <a' gis>8 \times 2/3 {<a gis>8 <e dis> <fis e> ~} <fis e>2 |
%	r1 | r1 | r1 | r1 |
%}

akordi = \chordmode {
  %\semiGermanChords
  \set chordChanges = ##t
  s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 |
	cis2:maj7.3- cis:m7.5- | a:maj7 fis:m7 | cis:maj7.3- cis:m7.5- | a2:maj7 gis:9+ |
	cis:maj7.3- cis:m7.5- | cis:m6 fis:m7 | cis1:maj7.3- | cis:maj7.3- |
}

\score {
  \new StaffGroup <<
    \new ChordNames \akordi
    \new Staff { \transpose dis c \instrument }
    \new Staff { \trumpet }
    \new Staff { \trombone }
  >>
  \layout { 
    indent = 0
  }
  \midi { \tempo 4 = 100 }
}

%\markup { \fontsize #-1 "(Raspisano za “Scifidelity Jazz Orchestra”)" }
%\markup { \sans "(Example taken from Frank Sikora’s “Neue Jazz-Harmonielehre”, p. 264)" }

%{
convert-ly (GNU LilyPond) 2.17.95  convert-ly: Processing `'...
Applying conversion: 2.17.0, 2.17.4, 2.17.5, 2.17.6, 2.17.11, 2.17.14,
2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27, 2.17.29
%}
