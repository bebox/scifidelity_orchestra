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
  top-markup-spacing.padding = #4
  markup-system-spacing.padding = #2
}

\header {
  title = \markup{\fontsize #+4 "First Step Blues"}
  %subtitle = "(slo. Lu - cija)"
  poet = "Eb VERSION"
  composer = "Dan Greenblatt"
}

note = \relative c'' {
  \key b \major
  \once \override Score.RehearsalMark.X-offset = #4
  \mark \markup{\box Theme}
  \partial 2
  \override TupletBracket.bracket-visibility = ##t
  r8 cis8 \tuplet 3/2 { d f g } |
  %\once \override Score.RehearsalMark.break-align-symbols = #'(key-signature)
  %\once \override Score.TimeSignature.break-align-anchor-alignment = #LEFT
  \bar ".|:"
  \repeat volta 2 {
  f2. g8 b |
  r2 r8 cis,8 \tuplet 3/2 { d f g } |
  f2. g8 b, |
  r2 r8 b' \tuplet 3/2 { as f fes } |
  es2. des8 es ~ |
  es2 r8 cis \tuplet 3/2 { d f g } |
  f2 ~ f8 g des c ~ |
  c2 r8 cis8 \tuplet 3/2 { d f g } |
  b4^. as^. f8 b, r8 b |
  fes'8 es des b as4 des8 b |
  }
  \alternative {
  {r2 r8 b \tuplet 3/2 { des b es ~ } |
  es2 r8 cis8 \tuplet 3/2 { d f g } |}
  {r2 r8 b, \tuplet 3/2 { des b es ~ } |
  es2 r2 |}
  }
  %\bar "|."
  \break
  
  \mark \markup{\box Solo}
  \once \override Score.RehearsalMark.X-offset = #4
  \bar ".|:"
  r1 | r | r | r | \break
  r1 | r | r | r | \break
  r1 | r | r | r | \break
  \bar ":|."
}

akordi = \chordmode {
  \semiGermanChords
  \set chordChanges = ##t
  \skip 2
  b1:7 | b:7 | b:7 | b:7 |
  es1:7 | es:7 | b:7 | b:7 |
  f1:7 | es:7 | b:7 | f:7 |
  b1:7 | f:7 |
  b1:7 | b:7 | b:7 | b:7 |
  es1:7 | es:7 | b:7 | b:7 |
  f1:7 | es:7 | b:7 | f:7 |
}

kiticaA = \lyricmode {
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
  \set stanza = "2."
  Do -- sta je sad, sa -- da stvar -- no mi je do -- sta
  že -- lim te al u tvom sr -- cu za me' ne -- ma mje -- sta
}

\score {
  <<
    \new ChordNames {\transpose b g \akordi }
    \new Staff {\transpose b g \note }
    %\addlyrics \kiticaA
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