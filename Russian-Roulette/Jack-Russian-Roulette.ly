\version "2.20.0"

% This is my first score
#(set-global-staff-size 20)

\header {
  dedication = "2020"
  title = "Russian Roulette"
  instrument = "Guitar"
  composer = "Jack Savoretti"
}


global = {
  \key c \major
  \time 6/8
  \clef "treble"
  \numericTimeSignature
  \compressFullBarRests
  \tempo "Whistfully "
}

micl = "clarinet"
mifl = "flute"
miob = "oboe"
mifh = "french horn"
misx = "tenor sax"
mist = "string ensemble 1"
miba = "cello"
mivs = "choir aahs"

povo = \markup \italic "poco vib."

\include "v1-1.ily"
\include "v2.ily"

\language "english"


music = \new StaffGroup <<
      \new Staff {
	\set Staff.midiInstrument = \mivs
%	\set Staff.instrumentName = \markup \center-column { "Mezzo-" "soprano" }
	\new Voice = "mezzosoprano" {
	  \va
        }
      }

      \context Lyrics = "mezzosoprano" {
        \lyricsto "mezzosoprano" {
          \vb
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

  