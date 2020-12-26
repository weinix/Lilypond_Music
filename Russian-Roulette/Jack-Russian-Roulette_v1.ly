\version "2.20.0"
\language "english"

\header {
  dedication = "To Year of 2020"
  title = "Russian Roulette"
  instrument = "Guitar"
  composer = "Jack Savoretti"
  arranger = "Arranger: Wei"
  copyright = "Wei"
}

global = {
  \key d \major
  \numericTimeSignature
  \time 2/2
  \partial 2
  \tempo "Whistfully " 2=59
}
\include "v1.ily"

classicalGuitar = \relative c' {
  \global
  % Music follows here.
  \transpose c d {\va}
  
}

\score {
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
    instrumentName = "Guitar"
  } { \clef "treble" \classicalGuitar }
  \layout { }
  \midi {
    \tempo 2=59
  }
}
