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
  title = \markup{\fontsize #+4 "Ralph J. Gleason Blues"}
  %subtitle = "(slo. Lu - cija)"
  poet = "C VERSION"
  composer = "Red Garland"
}

note = \relative c'' {
  \key b \major
  \once \override Score.RehearsalMark.break-align-symbols = #'(time-signature)
  \once \override Score.TimeSignature.break-align-anchor = #3.2
  \mark \markup{\box Theme}
  \partial 4
  des4 |
  %\once \override Score.RehearsalMark.break-align-symbols = #'(key-signature)
  %\once \override Score.TimeSignature.break-align-anchor-alignment = #LEFT
  \bar ".|:"
  d8 b r4 r4 c |
  des8 b des4 b des4 |
  d8 b r4 r4 des |
  d8 h d4 b c |
  des8 b r4 r c |
  des8 b des4 b des4 |
  d8 b r4 r4 des |
  d8 h d4 b4 des |
  d8 f,8 r4 r2 |
  r4 f8 ges g b c8 b8 ~ |
  b8 r8 r as8 ~ as8 r8 r g8 ~ |
  %\once \override M
  g8 r8 r ges8 ~ ges4 \parenthesize des'4^\markup{\general-align #X #LEFT {\small 1st time}} |
  \bar ":|.|:" 
  \break
  
  \mark \markup{\box Solo}
  \once \override Score.RehearsalMark.X-offset = #5
  r1 | r | r | r | \break
  r1 | r | r | r | \break
  r1 | r | r | r | \break
  \bar ":|."
}

akordi = \chordmode {
  \semiGermanChords
  \set chordChanges = ##t
  
  \skip 4
  b1:7 | es:7 | b:7 | b:7 |
  es1:7 | es1:7 | b1:7 | b:7 |
  f1:7 | f1:7 | b2:7 as2:7 | g2:7 ges2:7 | 
  b1:7 | es:7 | b:7 | b:7 |
  es1:7 | es1:7 | b1:7 | b:7 |
  f1:7 | f1:7 | b2:7 as2:7 | g2:7 ges2:7 | 
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
    \new ChordNames {\akordi }
    \new Staff {\note }
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