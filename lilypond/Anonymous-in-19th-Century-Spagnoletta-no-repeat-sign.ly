\version "2.21.0"
%\include "example-header.ily"

#(define ((bars-per-line-engraver bar-list) context)
  (let* ((working-copy bar-list)
         (total (1+ (car working-copy))))
    `((acknowledgers
       (paper-column-interface
        . ,(lambda (engraver grob source-engraver)
             (let ((internal-bar (ly:context-property context 'internalBarNumber)))
               (if (and (pair? working-copy)
                        (= (remainder internal-bar total) 0)
                        (eq? #t (ly:grob-property grob 'non-musical)))
                   (begin
                     (set! (ly:grob-property grob 'line-break-permission) 'force)
                     (if (null? (cdr working-copy))
                         (set! working-copy bar-list)
                         (begin
                           (set! working-copy (cdr working-copy))))
                           (set! total (+ total (car working-copy))))))))))))


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
 composer = "Anonymous in 19th Century with slightly modification"
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
    a2.:m
    g:7
    c
    c
    f
    g:7
    c
    c
    c
    c
    g:7
    g:7
    f
    e
    a:m
    a:m
    c
    c
    g
    g
    f
    e
    a:m
    a:m
    a:m
    e
    a:m
    e
    e
    a:m
    e
    a:m
  }
    \new FretBoards {
    \chordmode {
    r2.
    a2.:m
    g:7
    c
    c
    f
    g:7
    c
    c
    c
    c
    g:7
    g:7
    f
    e
    a:m
    a:m
    c
    c
    g
    g
    f
    e
    a:m
    a:m
    a:m
    e
    a:m
    e
    e
    a:m
    e
    a:m
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
    e4 c4 d
     e2 e4
     e4. d8 c4
     d2. 
     d2 e8 d
     c4. d8 c4
     b4. a8 gis4  %% 
     a2.
     a4 c4 d    %% repeat
     e2 e4
     e4. d8 c4
     d2. 
     d2 e8 d
     c4. d8 c4
     b4. a8 gis4
     a2.
     e'2.    
     
    c4. d8 c4
    b2 b4
    c4. d8 c4
    e2. 
    e2 e8 d8
    c4. d8 c4
    b4. a8 gis4
    a2.
    \fine
  }
  }
>>
