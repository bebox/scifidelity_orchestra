\include "AccordsJazzDefs.ly"

%-------------------------- Titres et entetes
myStaffSize = #20
#(set-global-staff-size myStaffSize)
#(set-default-paper-size "a4")
\paper {
  #(define fonts	(make-pango-font-tree "Dom Casual" "DejaVu Sans Condensed" "lilyjazzchord" (/ myStaffSize 20)))
  indent = 0
  system-system-spacing #'basic-distance = #7
  markup-system-spacing #'padding = #3
}

\header{
  title = "Can't Take My Eyes Of You"
  composer = "Frankie Valli"
  %arranger = "TROMBON 1"
  poet = "Scifidelity Orchestra - Rythm"
  dedication = "Marie and Bernhard Sattler Wedding Wish on 17.10.2015"
}

\paper {
  indent = 0
}

#(define (naturalize-pitch p)
   (let ((o (ly:pitch-octave p))
         (a (* 4 (ly:pitch-alteration p)))
         ;; alteration, a, in quarter tone steps,
         ;; for historical reasons
         (n (ly:pitch-notename p)))
     (cond
      ((and (> a 1) (or (eq? n 6) (eq? n 2)))
       (set! a (- a 2))
       (set! n (+ n 1)))
      ((and (< a -1) (or (eq? n 0) (eq? n 3)))
       (set! a (+ a 2))
       (set! n (- n 1))))
     (cond
      ((> a 2) (set! a (- a 4)) (set! n (+ n 1)))
      ((< a -2) (set! a (+ a 4)) (set! n (- n 1))))
     (if (< n 0) (begin (set! o (- o 1)) (set! n (+ n 7))))
     (if (> n 6) (begin (set! o (+ o 1)) (set! n (- n 7))))
     (ly:make-pitch o n (/ a 4))))

#(define (naturalize music)
   (let ((es (ly:music-property music 'elements))
         (e (ly:music-property music 'element))
         (p (ly:music-property music 'pitch)))
     (if (pair? es)
         (ly:music-set-property!
          music 'elements
          (map (lambda (x) (naturalize x)) es)))
     (if (ly:music? e)
         (ly:music-set-property!
          music 'element
          (naturalize e)))
     (if (ly:pitch? p)
         (begin
           (set! p (naturalize-pitch p))
           (ly:music-set-property! music 'pitch p)))
     music))

naturalizeMusic =
#(define-music-function (parser location m)
   (ly:music?)
   (naturalize m))

\include "deutsch.ly"

sax = {
%Uvod
\mark \markup {\box "Uvod"} \break
\repeat volta 2 {
ais''1 |
a''1 | }
%1
\alternative { {
gis''1 ~ |
gis''1 | }
%2
{
gis''1 ~ |
gis''1 | }}
%kitica
\mark \markup {\box "kitica"} \break
r1 |
r1 |
r1 |
r1 |
r1 |
r1 |
r1 |
r1 |
r1 |
r1 |
r1 |
r1 |
r1 |
r1 |
fis''8 e''4 dis''8 ~ dis''8 e''4 fis''8 ~ |
fis''8 gis''8 ~ gis''2. |
%kitica2brasssfill
\mark \markup {\box "kitica2"} \break
r1 |
r1 |
r1 |
r1 |
r1 |
r1 |
r1 |
r1 |
r1 |
r1 |
r1 |
r1 |
ais''1 |
a''1 |
fis''8 e''4 dis''8 ~ dis''8 e''8 fis''8 gis''8 |
fis''8 e''4 dis''8 ~ dis''8 e''8 fis''8 gis''8 |
%tema
\mark \markup {\box "tema"} \break
\repeat volta 2 {
his''4 cis'''4 his''4 cis'''4 |
his''4 cis'''8 e'''8 ~ e'''8 dis'''4 cis'''8 |
his''4 cis'''4 his''4 cis'''4 |
}
%1
\alternative { {
his''4 cis'''8 e'''8 ~ e'''8 dis'''4 cis'''8 | }
%2
{
e'''1 |
r1 |}}
%refren
\mark \markup {\box "refren"} \break
gis''8 gis''4 gis''8 ~ gis''8 gis''4 gis''8 |
gis''8 gis''4 gis''8 ~ gis''8 gis''4 gis''8 |
fis''8 fis''4 fis''8 ~ fis''8 fis''4 fis''8 |
fis''8 fis''4 e''8 ~ e''8 e''4 e''8 |
e''8 e''4 e''8 ~ e''8 e''4 e''8 |
e''8 e''4 dis''8 ~ dis''8 dis''4 dis''8 |
cis''1 |
cis''1 |
r1 |
r1 |
r1 |
r1 |
%fadeout
e''1 ~ |
e''1 |
a''1 ~ |
a''1 |
%kitica3
\mark \markup {\box "kitica3"} \break
d''1 ~ |
d''2 e''4 h'4 |
d''1 ~ |
d''2 e''4 h'4 |
d''1 |
d''2 e''4 d''4 |
d''2 c''2 |
h'2 a'2 |
d''2 dis''2 |
h''2 a''2 |
d''1 |
d''1 |
r1 |
r1 |
a'8 g'4 fis'8 ~ <fis' fis' >8 g'8 a'8 h'8 |
r1 |
%tema
\mark \markup {\box "tema"} \break
\compressFullBarRests
R1*4
%refren
\mark \markup {\box "refren"}
R1*24
\bar "|." }

akordi = \chordmode {
\set chordChanges = ##t
\semiGermanChords
%Uvod
fis1/e
h1:7/e
%1
e1
q
%2
e1
q
%kitica
e1
q
e1:maj7
q
e1:7
q
a1
q
a1:m6
q
e1
q
fis1/e
h1:7/e
e1
q
%kitica 2
e1
q
e1:maj7
q
e1:7
q
a1
q
a1:m6
q
e1
q
fis1/e
h1:7/e
e1
q
%tema
fis1:m7
h1:7
e1
%1
q
%2
cis1:7.9
q
%refren
fis1:m7
h2:7
h2:7.9-
gis1:m7
cis1:m7
fis1:m7
h1
e1
cis1:7.9
fis1:m7
h2:7
h2:7.9-
gis1:m7
cis1:m7
%fadeout
fis1:m7
q
d1:7
q
%kitica3
g1
q
g1:maj
q
g1:7
q
c1
q

c1:m6
q
g1
q
a1/g
d1:7/g
g1
q
}

pivot = {
%Uvod
\mark \markup {\box "Uvod"} \break
\repeat volta 2 {
fis'1 ~ |
fis'1 |
}
\alternative { {
%1
%\mark \markup {\box "1"} \break
fis'8 e'4 dis'8 ~ dis'8 e'8 fis'8 gis'8 |
fis'8 e'4 dis'8 ~ dis'8 e'8 fis'8 gis'8 | }
{
%2
%\mark \markup {\box "2"} \break
fis'8 e'4 dis'8 ~ dis'8 e'4 fis'8 ~ |
fis'8 gis'8 ~ gis'2. |
}}
%kitica
\mark \markup {\box "kitica"} \break
r1 |
r1 |
r1 |
r1 |
r1 |
r1 |
r1 |
r1 | \break
r1 |
r1 |
r1 |
r1 |
r1 |
r1 |
r1 |
r1 |
%kitica2brasssfill
\mark \markup {\box "kitica2"} \break
r1 |
r1 |
r1 |
r1 |
r1 |
r1 |
r1 |
r1 |
r1 | \break
r1 |
r1 |
r1 |
r1 |
r1 |
r1 |
r1 |
%tema
\mark \markup {\box "tema"} \break
\repeat volta 2 {
a'4 a'4 a'4 a'4 |
a'4 a'8 a'8 ~ a'8 a'4 a'8 |
g'4 gis'4 g'4 gis'4 |
}
\alternative {{
%1
%\mark \markup {\box "1"} \break
g'4 gis'8 h'8 ~ h'8 h'4 gis'8 |
}
{
%2
%\mark \markup {\box "2"} \break
h'1 |
r1 |
}}
%refren
\mark \markup {\box "refren"} \break
r1 |
r1 |
r1 |
r1 |
r1 |
r1 |
r1 | \break
r1 |
r1 |
r1 |
r1 |
r1 |
%fadeout
\mark \markup {\box "fadeout"} \break
r1 |
r1 |
r1 |
r1 |
%kitica3
\mark \markup {\box "kitica3"} \break
r1 |
r1 |
r1 |
r1 |
r1 |
r1 |
r1 |
r1 | \break
r1 |
r1 |
r1 |
r1 |
r1 |
r1 |
r1 |
r1 |
%tema
\mark \markup {\box "tema"} \break
\compressFullBarRests
R1*4
%refren
\mark \markup {\box "refren"}
R1*24
\bar "|." }

baru = {
%Uvod
\mark \markup {\box "Uvod"} \break
\repeat volta 2 {
cis'1 |
dis'1 |
}
\alternative {{
%1
%\mark \markup {\box "1"} \break
e'1 |
e'1 |
              }
              {

e'1 |
e'1 |
}}
%kitica
\mark \markup {\box "kitica"} \break
r1 |
r1 |
r1 |
r1 |
r1 |
r1 |
r1 |
r1 |
r1 |
r1 |
r1 |
r1 |
r1 |
r1 |
r1 |
r2 r8 h'8 gis'8 fis'8 |
%kitica2brasssfill
\mark \markup {\box "kitica2"} \break
e'1 ~ |
e'1 |
r1 |
r2 cis''8 h'8 gis'8 fis'8 |
e'1 |
e'1 |
a'1 |
a'1 |
a'1 |
a'1 |
gis'1 |
gis'1 |
fis'1 |
fis'1 |
fis'8 e'4 dis'8 ~ dis'8 e'8 fis'8 gis'8 |
fis'8 e'4 dis'8 dis'8 e'8 fis'8 gis'8 |
%tema
\mark \markup {\box "tema"} \break
\repeat volta 2 {
fis'4 fis'4 fis'4 fis'4 |
fis'4 fis'8 fis'8 ~ fis'8 fis'4 fis'8 |
e'4 e'4 e'4 e'4 |
}
\alternative {{
e'4 e'8 g'8 ~ g'8 g'4 e'8 |
              }
{
eis'1 |
r1 |
}}
%refren
\mark \markup {\box "refren"} \break
cis''8 cis''4 cis''8 ~ cis''8 cis''4 cis''8 |
cis''8 cis''4 cis''8 cis''8 cis''4 cis''8 |
h'8 h'4 h'8 h'8 h'4 h'8 |
h'8 h'4 h'8 h'8 h'4 h'8 |
a'8 a'4 a'8 a'8 a'4 a'8 |
a'8 a'4 a'8 a'8 a'4 a'8 |
gis'1 |
gis'1 |
r1 |
r1 |
r1 |
r1 |
%fadeout
\mark \markup {\box "fadeout"} \break
cis''1 ~ |
cis''1 |
c''1 ~ |
c''1 |
%kitica3
\mark \markup {\box "kitica3"} \break
g'1 |
g'1 |
fis'1 |
fis'1 |
f'1 |
f'1 |
e'1 |
e'1 |
es'1 |
es'1 |
d'1 |
d'1 |
cis'1 |
c'1 |
a'8 g'4 fis'8 r8 g'8 a'8 h'8 |
a'8 g'4 fis'4 g'8 a'8 h'8 |
%tema
\mark \markup {\box "tema"} \break
\compressFullBarRests
R1*4
%refren
\mark \markup {\box "refren"}
R1*24 \bar "|." }




\score {
  <<
  \new ChordNames { \transpose e b \akordi }
  %\new Staff { \naturalizeMusic \transpose e b \sax }
  \new Staff { \clef bass \naturalizeMusic \transpose e b, \pivot }
  %\new Staff { \clef bass \naturalizeMusic \transpose e b, \baru }
  >>
  \layout {}
 \midi {\tempo 4 = 200 }
}