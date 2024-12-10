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
  e,
}

<< \new Staff { \clef "G_8" \symbols }
  \new TabStaff  << 
    \new TabVoice { 
      \set TabStaff.capoFret = #3 % Set capo on 3rd fret
      \symbols 
    }
  >>
>>

