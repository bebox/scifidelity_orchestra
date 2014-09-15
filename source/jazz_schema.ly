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
  title = \markup { \override #'(font-name . "Dom Casual") \fontsize #4 "" }
  %piece = \markup { \fontsize #3 "" }
  poet = \markup { \fontsize #1 "" }
  composer = \markup { \fontsize #1 "" }
  %tagline = ""
}

instrument = \relative c'' {
  \jazzOn
  \set Staff.instrumentName = "Instrument"
  \key f \major
  \numericTimeSignature
  %\tempo "130 BPM"
}

akordi = \chordmode {
  %\semiGermanChords
  \set chordChanges = ##t
}

\score {
  \new StaffGroup <<
    \new ChordNames \akordi
    \new Staff \instrument
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
