\version "2.20.0"
#(set-global-staff-size 14)

\paper {
  #(set-paper-size "letter")
}

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
  \tempo "Whistfully"
}

micl = "clarinet"
mifl = "flute"
miob = "oboe"
mifh = "french horn"
misx = "tenor sax"
mist = "string ensemble 1"
miba = "cello"
mivs = "choir aahs"
micg = "acoustic guitar (nylon)"
    

\include "v1-1.ily"
\include "v2.ily"
\include "v3.ily"

\language "english"

chordsPart = <<
  \new ChordNames \chordNames
>>

music = \new StaffGroup <<
     <<
    \chordsPart
  >>
      \new Staff {
	\set Staff.midiInstrument = \mist
	\new Voice = "mezzosoprano" {
	  \va
        }
      }

      \new  Lyrics = "mezzosoprano" {
        \lyricsto "mezzosoprano" {
          \vb
        }
      }
      
      \new Lyrics = "mezzosoprano" {
        \lyricsto "mezzosoprano" {
          \vc
        }
      }

>>



\book {
  \score {

    \music
    \layout {}
  }

  \score {
    \unfoldRepeats \music

    \midi {
      \context {
        \Score
      }
    }
  }
}

  