\version "2.20.0"
\language "english"

\header {
  dedication = "2020"
  title = "Russian Roulette"
  instrument = "Guitar"
  composer = "Jack Savoretti"
  arranger = "Wei"
  copyright = "Wei"
}

global = {
  \key c \major
  \numericTimeSignature
  \time 6/8
  \tempo "Whistfully"
}

\include "v1-1.ily"
\include "v2.ily"
classicalGuitar = \relative c' {
  
  \global
  % Music follows here.
\new Voice = "mezzosoprano" {
 \va
 }
 
\context Lyrics = "mezzosoprano" {
  \lyricsto "mezzosoprano" {
     \vb
        }
 }
      
}

\score {
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
    instrumentName = "Classical guitar"
  } { \clef "treble" \classicalGuitar }
  \layout { }
  \midi {
    \tempo 8 = 90
  }
}
