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
   % \RemoveEmptyStaffContext
    % To use the setting globally, uncomment the following line:
     \override VerticalAxisGroup.remove-first = ##t
  }
}


\header {
  title = \markup { \override #'(font-name . "Dom Casual") \fontsize #4 "FREDDIE FREELOADER" }
  %piece = \markup { \fontsize #3 "ŠLAMPAVE MAČKE" }
  subtitle = \markup { \override #'(font-name . "Dom Casual")\fontsize #1 "(\"FRANJO ŽICAROŠ\")" }
  poet = \markup { \fontsize #1 "" }
  composer = \markup { \fontsize #1 "M. DAVIS" }
  %tagline = ""
}

instrument = \relative c' {
  \jazzOn
  \set Staff.instrumentName = "B"
	\set Score.markFormatter = #format-mark-box-letters
  \key b \major
  %\numericTimeSignature
  %\tempo "130 BPM"
	%\mark \default
	%\mark \markup {
%		  \override #'(thickness . 3)
%			  \box
%				  \line { A }
%	}
	%\bar ".|:-||"
	<b d g>2 <as c f> ~ |
	q2. r4 |
	<b d g>2 <as c f> ~ |
	q2. r4 |
	<es' g c>2 <des f b> ~ |
	q2. r4 |
	<b d g>2 <as c f>2 ~ |
	q2. <as d as'>4 |
	<a es' a>2. <as es' as>4 |
	<g des' g>2. f'4 |
	<ges, c ges'>1 ~ |
	<ges c ges'>2. r4 |
	\bar ":.|.:"
	\break

	%\mark \default
	\mark \markup {
		  \override #'(thickness . 3)
			  \box
				  \line { \fontsize #-2 SOLOS }
	}
	%\bar ".|:"
	r1 | r1 | r1 | r1 |
	r1 | r1 | r1 | r1 |
	r1 | r1 | r1 | r1 | \break
	\bar ":|."

%	<ges d' ges>1 ~ |
%	<ges d' ges>2. r4 | \break
%	\bar "|."

	\mark \markup {
		  \override #'(thickness . 3)
			  \box
				  \line { \fontsize #-2 MIXOLYDIAN }
	}
	b8 c d es f g as4 |
	\bar "|."
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
  \set chordChanges = ##f
	s1*12 |
	b1:7 | b:7 | b:7 | b:7 |
	es1:7 | es:7 | b:7 | b:7 |
	f1:7 | es:7 | as:7 | as:7 |
}

\score {
  \new StaffGroup <<
    \new ChordNames { \transpose b c \akordi }
    \new Staff { \transpose b c' \instrument }
    %\new Staff { \trumpet }
    %\new Staff { \trombone }
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
