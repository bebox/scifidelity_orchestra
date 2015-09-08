\version "2.18.0"
\include "./AccordsJazzDefs.ly"
\language "deutsch"

myStaffSize = #25
#(set-global-staff-size myStaffSize)
#(set-default-paper-size "a4")
\paper {
  #(define fonts ( make-pango-font-tree
                   "Dom casual"
                   "Tex Gyre Termes"
                   "lilyjazzchord"
                   (/ myStaffSize 20)
                   )
     )
  indent = 0
}

\header {
  title = \markup{\fontsize #+4 "LUCIJA"}
  %subtitle = "(slo. Lu - cija)"
  poet = "Daniel Kreko"
  composer = "Scifidelity Orchestra"
}

note = \relative c' {
  \mark \default
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
  r1 | \break
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

akordi = \chordmode {
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

kiticaA = \lyricmode {
  \repeat unfold 20 {_}
  \set stanza = "1."
  \override Lyrics.LyricText.font-series = #'bold
  Kon -- kre -- tan sam a za te -- be pre -- kon -- kre -- ten
  od -- bi -- jaš me a u tvoj ži -- vot sam u -- ple -- ten.
  O -- pu -- sti se, o -- pu -- sti se, me -- ni pre -- pu -- sti se. __
  
  S'to -- bom se ne -- zna jel si svije -- tlost il ta -- ma
  ni -- ti se ne -- zna jel si vru -- ća il hla -- dna al
  daj mi se ja -- vi i dan mi u -- ljep -- šaj Lu -- ci -- ja. __
}

kiticaB = \lyricmode {
  \repeat unfold 20 {_}
  \set stanza = "2."
  Do -- sta je sad, sa -- da stvar -- no mi je do -- sta
  že -- lim te al u tvom sr -- cu za me' ne -- ma mje -- sta
}

\score {
  <<
    \new ChordNames \akordi
    \new Staff \note
    \addlyrics \kiticaA
    %\addlyrics \kiticaB
  >>
  
  \layout {
    \context {
      \Score markFormatter = #format-mark-box-letters
    }
    \context {
      % \Lyrics \override LyricText #'font-size = #-2
            %   \override LyricText #'font-name = "Tex Gyre Termes"
    }
  }
}

  \markup {
    \fill-line {
      \column {
        \vspace #1
        \line { 
          \bold "Verse 2. "
          \column {
            "Dosta je sad, sada stvarno mi je dosta."
            "Želim te al' u tvom srcu za me nema mjesta."
            "Opusti se, opusti se, meni prepusti se."
          }
        }
      }
    }
  }