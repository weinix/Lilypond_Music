\include "predefined-guitar-fretboards.ly"
\version "2.20.0"
%\include "deutsch.ly"
  
#(set-global-staff-size 16)

\header {
  title     = \markup \bold \italic "Russian Roulette"
  composer  = "Jack Savoretti"
}

voiceconsts = {
  \key c \major
  \time 6/8
  \clef "treble"
  \numericTimeSignature
  \compressFullBarRests
  \tempo "Calm " 8=180
  % Set default beaming for all staves
  % \set Timing.beamExceptions = #'()
  % \set Timing.baseMoment     = #(ly:make-moment 1 4)
  % \set Timing.beatStructure  = #'(1 1 1)
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

povo = \markup \italic "poco vib."
\language "english"

\include "v1.ily"
\include "v2.ily"
\include "v3.ily"

chordsPart = <<
  \new ChordNames \chordNames
  \new FretBoards { \chordNames}
>>

music = \new StaffGroup <<
     <<
    \chordsPart
  >>
    \new Staff {
	\set Staff.midiInstrument = \micg
	\set Staff.instrumentName = \markup \center-column { "Voice 1" }
	\new Voice = "melody" {
	  \va 
        }
      }

      \new  Lyrics = "melody" {
        \lyricsto "melody" {
          \vb
        }
      }
      
      \new Lyrics = "melody" {
        \lyricsto "melody" {
          \vc
        }
      }
      

%      \new Staff {
%	\set Staff.midiInstrument = \micg
%	\set Staff.instrumentName = \markup \center-column { "Guitar1" }
%	\transpose f f { \vc }
%      }
      
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
