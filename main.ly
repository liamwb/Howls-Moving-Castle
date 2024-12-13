\version "2.24.4"



\paper {
  #(define fonts
    (set-global-fonts
     #:roman "Times New Roman"
     #:sans "Instrument Sans"
     #:typewriter "DejaVu Sans Mono"
     ; unnecessary if the staff size is default
     #:factor (/ staff-height pt 20)
    ))
}

\header{
	title = "Howl's Moving Castle Theme"
	subtitle = "Sungha Jung"
	composer = "Liam Wood-Baker"
	opus = "(based on TAB by yuji812)"
	poet = "Capo. fret 3"
}

symbols = {
  \key e \minor
  \time 3/4
  \tempo 4 = 120
  <g b>8 <a c'> <g b> <a c'> <g b> <a c'>
  <a fis> <b> <a fis> <b> <a fis> <b>
  <g e> <a fis> <g e> <a fis> <g e> <a fis>
  <fis dis a,>4 <dis b, fis,>2
  b4 \arpeggioArrowDown <dis b, fis,>2\arpeggio(
  <dis b, fis,>2.)
  \tempo 4 = 90 b,4 e g
  <b a,> <g e>2
  \arpeggioArrowUp <a dis b,>4\arpeggio g fis
  <e, g> <b, d>2
  <e,>4 b,8 e g b
  <a, e'>4 <e g> <e'>
  <e a c' e'>\arpeggio fis' d'8 c'
  <g, d'>4  <fis  b>2\3
  <fis' cis>4 <g b> <e'>
  <fis, d'> cis' d' 
  <b, e'> d d'
  <a, cis'>2 b4
  <g, d a>\arpeggio g a
  <fis, b> a e
  <b, fis>2.
  fis'\grace8( g'2.)
  fis'2.
  a'\grace8( g'2.)
  g'\grace8( fis') e' dis' c' b b,(
  b,2.)
  \tempo 4 = 145
  e,4 <e g> <e g>
  b, <e g> <e g>
  e,4 <e g> <e g>
  b, e g
  <a, b> <e g> b
  <b, dis a>\arpeggio g fis
  <e, g> b, e
  <e, e> g b 
  <a, e'> <e g> e'
  <e a c' e'>\arpeggio fis' d'8 c'
  <g, d'>4 d g 
  fis g d'
  <fis fis'> <b g> e'
  <fis, d'> cis' d'
  <b, e'> d d'
  <a, cis' > e b
  <g, d a> g a
  <fis, b> a e
  <b, fis> b\3 b
  b, e g
  <a, b> <e g> b
  <b, dis a> g fis
  <e, g> b, e
  <f, e> g8 e, <g, b>4
  <c e'> <e g> e'
  <e a c' e'>\arpeggio fis' d'8 c'
  <g, d'>4 d g
  fis b\3 d'
  <fis fis'> <g b> e'
  fis, d'8 cis' c' cis'
  <b, e'>4 d d'
  a, cis'8 b d b
  <g, b>4 d8 a g4
  <fis, fis> gis ais
  b b, fis
  dis b, fis,(
  fis,) b, cis
  dis b, <fis, b>
  <c' d> a b
  <d a> g fis
  <g, g> a b
  <g, d>2 d4
  <d c'> a b
  <d a>4.\arpeggio g8 a4
  <g, b> d g
  g, d b 
  \tuplet 3/2 { <b, b>8( cis' b)} ais4 b 
  <b, d'> cis' b
  <fis, ais> fis cis'
  <fis, fis> cis fis
  <b, d'> d d'
  <b, d'> cis' b
  <fis, cis'> fis ais
  fis' cis' ais
  <b, fis b\3 dis'>\arpeggio <b, \parenthesize fis>4 <dis' b\3>
  dis' e' fis'
  <e, g'> b8\3 a g fis
}

<< \new Staff { \clef "G_8" \symbols }
  \new TabStaff  << 
    \new TabVoice { 
      \set TabStaff.capoFret = #3 % Set capo on 3rd fret
      \symbols 
    }
  >>
>>

