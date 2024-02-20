\version "2.21.0"
%\include "example-header.ily"


\header {
 mutopiatitle = "Spagnoletta"
 mutopiacomposer = "Anonymous in 19th Century"

 mutopiainstrument = "Guitar"
 date = ""
 source = "The Renaissance Guitar by Frederick Noad"
 style = "Baroque"
 copyright = "WW Youth Classical Guitar Group Practice"
 maintainer = "Wei Wang"
 title = "Spagnoletta"
 composer = "Anonymous in 19th Century"
 %opus="BWV 610"

 footer = "Practice With Uncle Wang"
 tagline = \markup {
  \override #'(baseline-skip . 2.2)
  \center-column {
   \abs-fontsize #8 \sans \bold
   \with-url "https://github.com/weinix/classical-guitar-lessons" {
    "Group"
    "Practice Project"
   }
  }
  \override #'(baseline-skip . 0)
  \column {
   \with-color #grey
   \filled-box #'( 0 . 1) #'(-2.5 . 1.4) #0
  }
  \override #'(baseline-skip . 2.2)
  \column {
   \abs-fontsize #8 \sans
   \concat{"Typeset using " \with-url "http://www.lilypond.org" "LilyPond" " Â©2006 by " \maintainer "." }
   \abs-fontsize #8 \sans
   \concat {"This work is licensed under a " \with-url "http://creativecommons.org/about/pdm" \copyright " license."}
  }
 }
}



global = {
   \key a \minor
   \time 3/4
   \tempo largo
   \accidentalStyle default
}

\include "predefined-guitar-fretboards.ly"

<<
  \chords {
    r2.
    c
    g:7
    c
    c
    g:7
    g:7
    c
    c
    c
    c
    g:7
    g:7
    f
    e
    c
    c
  }
  \new FretBoards {
    \chordmode {
      r2.
      c
      g:7
      c
      c
      g:7
      g:7
      c
    }
  }
  \new Voice {
    \time 3/4
    \relative c' {
    r4 a'4 b4       %% measure 1
    c4.  b8 c4      %% measure 2
    d4. c8 d4        %% measure 3
    e2.                    %% measure 4
    e4. f8 g4         %% measure 5
    f2 e4
    d4. c8 d4
    e2.
    e4
    \repeat volta 2 {
       c4 d
       e2 e4
       e4. d8 c4
       d2. 
       d2 e8 d
       c4. d8 c4
       b4. a8 gis4
       e'2         e4
       \alternative  {
       \volta 1  { e4 }
       \volta 2 { e2. }
       }
    }
    c4. d8 c4
    b2 b4
    c4. d8 c4
    e2. 
    e2 e8 d8
    c4. d8 c4
    b4. a8 gis4
    cis2.
    \fine
  }
  }
>>
