\version "2.18.0"
\include "../../config/AccordsJazzDefs.ly"
\language "deutsch"

myStaffSize = #21
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
  top-markup-spacing.padding = #3
  markup-system-spacing.padding = #1.5
}

\header {
  title = \markup{\fontsize #+4 "You Stepped Out Of A Dream"}
  subtitle =  "As recorded by: The Four Freshmen"
  composer =  "Nacio Herb Brown"
  poet =  "Gus Kahn"
}

note = \relative c' {
  \key c \major
  \clef "bass"
    
  \once \override Score.RehearsalMark.break-align-symbols = #'(time-signature)
  \once \override Score.TimeSignature.break-align-anchor = #1
  \mark \markup{\box A}
    a2 r2 | % 2
    r8 gis4. fis8 [ fis8 gis8 a8
    ~ ] | % 3
    a1 ( | % 4
    g2 ) \times 2/3 {
        b4 g4 b4 }
    | % 5
    b4 b8 [ c8 ~ ] c2 ( | % 6
    h4. ) h8 b8 [ b8 c8
    e8 ~ ] | % 7
    e2 ( ~ e4 es8 [ d8 ~ ] | % 8
    d2 ) \times 2/3 {
        e4 es4 d4 }
    \bar "||"
    
    \once \override Score.RehearsalMark.break-align-symbols = #'(time-signature)
    \once \override Score.TimeSignature.break-align-anchor = #1
    \mark \markup{\box B}
    d4. d8 d2 ( | \barNumberCheck #10
    cis2 ) \times 2/3 {
        e4 f4 e4 }
    | % 11
    e4. d8 e2 ( | % 12
    d2 ) \times 2/3 {
        d4 e4 fis4 }
    | % 13
    fis4 fis8 [ fis8 ~ ] fis2 ~ | % 14
    fis2 \times 2/3 {
        a,4 h4 a4 }
    | % 15
    c1 | % 16
    cis1 \bar "||"
    
  \once \override Score.RehearsalMark.break-align-symbols = #'(time-signature)
  \once \override Score.TimeSignature.break-align-anchor = #1
  \mark \markup{\box C}
    r4 h2. ~ | % 18
    h8 h4 h8 ~ h8 [ h8 h8
    c8 ~ ] | % 19
    c1 ( | \barNumberCheck #20
    b2 ) \times 2/3 {
        c4 c4 c4 }
    | % 21
    \times 2/3  {
        d4 d4 d4 }
    c2 ( | % 22
    h4. ) h8 b8 [ b8 b8
    f'8 ~ ] | % 23
    f1 ( | % 24
    e4 ) r4 r2 | % 25
    \bar "||"
    
  \once \override Score.RehearsalMark.break-align-symbols = #'(time-signature)
  \once \override Score.TimeSignature.break-align-anchor = #3
  \mark \markup{\box D}
    r2 d2 ( ~ | % 26
    d1 | % 27
    cis2 d2 | % 28
    e2 ) \times 2/3 {
        cis4 cis4 cis4 }
    | % 29
    h2 ( b2 | \barNumberCheck #30
    a2 ) \times 2/3 {
        as4 as4 as4 }
    | % 31
    as2 ( h2 | % 32
    b1 )
    \bar "||"
      
  \once \override Score.RehearsalMark.break-align-symbols = #'(time-signature)
  \once \override Score.TimeSignature.break-align-anchor = #0
  \mark \markup{\box E}
    
    R1*8 \bar "||"
    \mark \markup{\box F}

    R1*8 \bar "||"
    \once \override Score.RehearsalMark.break-align-symbols = #'(time-signature)
    \once \override Score.TimeSignature.break-align-anchor = #4
    \mark \markup{\box G}

    a2 r2 | \barNumberCheck #50
    r8 gis4. fis8 [ fis8 gis8 a8 (
    ~ ] | % 51
    a8 [ b8 ~ ] b2. ~ | % 52
    b8 ) [ as8 ~ ] as4 g4 as4
    | % 53
    h8 [ h8 h8 c8 ( ~ ] c2 | % 54
    h4. ) e8 e8 [ d8 c8
    e8 ( ~ ] | % 55
    e8 [ f8 ~ ] f2. | % 56
    e4 ) r8 a,8 a4 a8 [ a8 ~ ] | % 57
    \bar "||"
          \once \override Score.RehearsalMark.break-align-symbols = #'(time-signature)
  \once \override Score.TimeSignature.break-align-anchor = #0
      \mark \markup{\box H}
    a2 g4 f8 [ e8 ~ ] | % 58
    e2 r8 f4. | % 59
    \times 2/3  {
        gis4 e4 fis4 }
    gis2 ~ | \barNumberCheck #60
    gis2 \times 2/3 {
        gis4 gis4 a4 }
    | % 61
    

      \mark \markup{\box I}  
    h2 ( b2 | % 62
    a2 ) \times 2/3 {
        gis4 h4 gis4 }
    | % 63
    h1 ( | % 64
    b1 ) | % 65
    r2 \times 2/3 {
        cis4 cis4 c4 }
    | % 66
    h1 ~ | % 67
    h1 \bar "|."

}

akordi = \chordmode {
  %\semiGermanChords
  \set chordChanges = ##t
  
    | % 1
    a1:maj7 | % 2
    s1 | % 3
    b1:maj7 | % 4
    s2 s1*1/6 s1*1/6 s1*1/6 | % 5
    c4:7 s8 s8 s2 | % 6
    s4. s8 s8 s8 s8 s8 | % 7
    f1:maj7 | % 8
    s2 s1*1/6 s1*1/6 s1*1/6 |
    e4.:m7 s8 s2 |
    a2:7 s1*1/6 s1*1/6 s1*1/6 | % 11
    d4.:m7 s8 s2 | % 12
    s2 s1*1/6 s1*1/6 s1*1/6 | % 13
    fis4:m7 s8 s8 s2 | % 14
    h2:7 s1*1/6 s1*1/6 s1*1/6 | % 15
    f1:7 | % 16
    e1:13.11
    a4:maj7 s2. | % 18
    s8 s4 s8 s8 s8 s8 s8 | % 19
    b1:maj7 |
    s2 s1*1/6 s1*1/6 s1*1/6 | % 21
    c4*2/3:7 s1*1/6 s1*1/6 s2 | % 22
    s4. s8 s8 s8 s8 s8 | % 23
    es1:9.11+ | % 24
    d4:7 s4 s2 | % 25
    h2:m7.5- s2 | % 26
    e1:7 | % 27
    a2:maj7 h2:m7 | % 28
    cis2:m7 a4*2/3:maj7 s1*1/6 s1*1/6 | % 29
    cis2:m7 c2:7 |
    f2:maj7 h2:m7 | % 31
    a1:maj7 | % 32
    b1:7 |
    s1 s1 s1 s1 s1 s1 s1 s1 |
    s1 s1 s1 s1 s1 s1 s1 s1 |
    a1:maj7 |
    s8 s4. s8 s8 s8 b8:maj7 | % 51
    s8 s8 s2. | % 52
    s8 s8 s4 s4 s4 | % 53
    c8:7 s8 s8 s8 s2 | % 54
    s4. s8 s8 s8 s8 es8:9 | % 55
    s8 s8 s2. | % 56
    d4:7 s8 s8 s4 s8 s8 | % 57
    d2:m7 g4:7 s8 s8 | % 58
    h2:m7.5- s8 e4.:7 | % 59
    a4*2/3:maj7 s1*1/6 s1*1/6 h2:m7 |
    c2:m7 a4*2/3:maj7 s1*1/6 s1*1/6 | % 61
    cis2:m7 c2:7 | % 62
    f2:maj7 e2:7 | % 63
    cis1:m7 | % 64
    c1:7 | % 65
    b1:maj7 | % 66
    a1:maj7 | % 67
    s1 |
}

kiticaA = \lyricmode {
    You
    stepped out of a dream __ You are to won -- der -- ful __
    to be what you seam __ Could there be eyes like yours? __
    Could there be lips like yours? __ Could there be smiles
    like yours? __ Ho -- nest and true -- ly? You stepped
    out __ of a cloud __ I want to take you a -- way __ a --
    way from the crowd u __ out of a dream __
    safe in my Heart __ You stepped out of a cloud __
    I want to take you a -- way __ a -- way from the crowd __
    And have you all __ to my -- self __ a --
    lone and a -- part __ Out of a dream __ safe in my Heart __
    Out of a dream __
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
    \addlyrics \kiticaA
    %\addlyrics \kiticaB
  >>
  
  \layout {
    \context {
      \Score markFormatter = #format-mark-box-letters
    }
    \context {
       \Lyrics \override LyricText #'font-size = #-2
       \override LyricText #'font-name = "Tex Gyre Termes"
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
    \tempo 4 = 116
  }
}