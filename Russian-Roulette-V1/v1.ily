\version "2.20.0"
va = \relative c' {
  \time 6/8
  r4. r4 e8 
  e4 d8 c4 b8 
  a4 b8 c4 d16 (e16)
  d8 c4 (c8) b8 c8 
  d4. r4 r8
  r8 \tuplet 3/2 {c8 d8 c8} d8 c4 
  r8 \tuplet 3/2 {c8 d8 c8} d8 r8 e8
  (f16) e16 e16 d16 e4. r8
  
  r4. r4 e8
  e4 d8 c4 c16 b16 
  a8 b4 r4 d16 (e16) 
  d4 c8 c4 b16 c16 
  d4. r4.
  r8 \tuplet 3/2 {c8 d8 c8} d8 c4 
  r8 \tuplet 3/2 {c8 (d8) c8} d8 r8 e8
  f16 e16 e16 d16 e4. r8
  r4. r4.
  a4. e4. 
  a8 a8 b8 c8 b8 a8 
  b4 (a8)   f4. 
  r4. r8 e8 e8
  d4. r4 r8
  r8. g8 g8  a8 d,8 e8
  (e4.) r4.
  r4. r4.
  a4. e4. 
  a8 a8 b8 c8 b8 a8 
  b4 (a8) f4. 
  r4. r8 e8 e8
  \barNumberCheck 30
  e8 d4 (d8.) d8
  g4 g8 g8 f8 e8
  a,4. r4.
  r4. r8 c8 c8 
  b4. (b8) b8 b8
  d4 d8 d8 c8 b8
  a2 r4
  
}