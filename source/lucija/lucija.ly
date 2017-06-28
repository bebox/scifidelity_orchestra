\version "2.18.0"

\include "./AccordsJazzDefs.ly"
\include "deutsch.ly"

%-------------------------- Titres et entetes
myStaffSize = #27
#(set-global-staff-size myStaffSize)
#(set-default-paper-size "a4")
\paper {
	#(define fonts	(make-pango-font-tree "Dom Casual" "DejaVu Sans Condensed" "lilyjazzchord" (/ myStaffSize 20)))
	indent = 0
	system-system-spacing #'basic-distance = #7
	markup-system-spacing #'padding = #3
}

\header	{
	title =		\markup { \fontsize #+4   "LUCIJA"}
	subtitle =	\markup { \fontsize #+1   "(slo. Lu - cija)"	}
	poet =		\markup { \fontsize #+1   "Daniel Kreko"	}
	composer = 	\markup { \fontsize #+1   "Scifidelity Orchestra"}
}

accords = \chordmode {
\semiGermanChords
\set chordChanges = ##t
    e1:m | q | q | q | 
    e1:m | q | q | q | 
    
    e1:m | q | a1:m7+ | q | c:aug | q |
    e1:m | h:7 | e:m | e:m | a:m7+ | q |
    c1:dim | q | e:m | d |
    
    g1 | q | q | q |
    d1/fis | q | q |
    f1:maj7 | e:m | q |
    c1 | q | a:m7 | q | q | q |
    

}

klarinet = \relative c' {
    \set midiInstrument = #"clarinet"
    \key c \major
    \mark \default
    %\partial 4
    e2 f4 g8 a ~ |
    a4. h8 ~ h4 c |
    d2 e4 d8 e ~ |
    e1 |
    e2 d4 c8 h ~ |
    h4. a8 ~ a4 g |
    f2 g4 f8 e ~ |
    e1 |
    \bar "||"
    
    \mark \default
    r4 g4 g8 fis ~ fis4 |
    e4 r4 r4 e4 |
    a2 a8 g ~ g g ~ |
    g8 fis4 g8 ~ g fis4. |
    r4 fis4 fis8 e ~ e4 |
    dis2 h4 h |
    g'2 g8 a4 h8 ~ |
    h8 a4 g8 ~ g fis ~ fis4 |
    r4 g4 g8 fis ~ fis4 |
    e2 r2 |
    r4 a4 a g |
    fis2 r2 |
    r4 h,4 ais h |
    g'2 dis |
    fis4( e2.) |
    r1 |
    \bar "||"
    
    \mark \default
    a4. h8 ~ h4 h |
    h4 d,4 d d |
    r4 h'4 c d |
    c2 h |
    a4. a8 ~ a4 a |
    a4 d, d d |
    r4 a' h c |
    h2 a4 g |
    g4. g8 ~ g4 g |
    fis4. e8 ~ e4 fis4 |
    g4. g8 ~ g4 g4 |
    fis4. e8 ~ e2 |
    fis4. e8 ~ e4 c4 ~ |
    c1 |
    r1 |
    r1 |
    \bar "|."
    
}

kiticaA = \lyricmode {
  %\set stanza = #"1. "
  \repeat unfold 20 {_}
  Kon -- kre -- tan sam a za te -- be pre -- kon -- kre -- ten
  od -- bi -- jaš me a u tvoj ži -- vot sam u -- ple -- ten
  o -- pu -- sti se, o -- pu -- sti se me -- ni pre -- pu -- sti se __
  
  S'to -- bom se ne -- zna jel si svije -- tlost il ta -- ma
  ni -- ti se ne -- zna jel si vru -- ća il hla -- dna al
  daj mi se ja -- vi i dan mi u -- ljep -- šaj Lu -- ci -- ja. __
}

kiticaB = \lyricmode {
  %\set stanza = #"1. "
  \repeat unfold 20 {_}
  Do -- sta je sad, sa -- da stvar -- no mi je do -- sta
  že -- lim te al u tvom sr -- cu za me' ne -- ma mje -- sta
}


\score {
	<<
	\new ChordNames \accords
    \new Staff \new Voice = chant { \klarinet }
   % \new Lyrics \lyricsto chant { \rijeci} 
   % \new Lyrics \lyricsto chant { \rijecidva} 
    %\new Staff { \trombon }
    \addlyrics { \kiticaA }
    \addlyrics { \kiticaB }
	>>
    \layout {
    \context { \Score
                %\override LyricText.font-name = #"DejaVu Sans Condensed"
                \override LyricText.font-size = #5

    } 
    }
    \midi {
      \context {
      \Staff
      \remove "Staff_performer"
    }
    \context {
      \Voice
      \consists "Staff_performer"      
    }
        \tempo 4 = 127 
              }
}



%{
convert-ly (GNU LilyPond) 2.18.2  convert-ly: Processing `'...
Applying conversion: 2.15.7, 2.15.9, 2.15.10, 2.15.16, 2.15.17,
2.15.18, 2.15.19, 2.15.20, 2.15.25, 2.15.32, 2.15.39, 2.15.40,
2.15.42, 2.15.43, 2.16.0, 2.17.0, 2.17.4, 2.17.5, 2.17.6, 2.17.11,
2.17.14, 2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27,
2.17.29, 2.17.97, 2.18.0
%}
