SysGet, Mon1, MonitorWorkArea, 1    ; 0 , 0 , 3840, 2114
SysGet, Mon2, MonitorWorkArea, 2    ; 3840, -817, 6000, 2977

m1l := Mon1Left
m1r := Mon1Right
m1t := Mon1Top
m1b := Mon1Bottom
m1x := m1r - m1l
m1y := m1b - m1t  
m2l := Mon2Left
m2r := Mon2Right
m2t := Mon2Top
m2b := Mon2Bottom
m2x := m2r - m2l
m2y := m2b - m2t

; Config row m x col n 
m1m = 2
m1n = 2
m2m = 1
m2n = 3

wm(x,y,w,h){
    winMove,A,,x,y,w,h
}

#+1::wm(0,0,m1x/m1m,m1y/m1n)
#+2::wm(m1x/m1m,0,m1x/m1m,m1y/m1n)
#+3::wm(0,m1y/m1n,m1x/m1m,m1y/m1n)
#+4::wm(m1x/m1m,m1y/m1n,m1x/m1m,m1y/m1n)
#+5::wm(0,0,m1x/m1m,m1y)
#+6::wm(m1x/m1m,0,m1x/m1m,m1y)
#+7::wm(m2l,m2t,m2x,m2y/m2n)
#+8::wm(m2l,m2t+m2y/m2n,m2x,m2y/m2n)
#+9::wm(m2l,m2t+2*m2y/m2n,m2x,m2y/m2n)
#+0::wm(m2l,m2t,m2x,m2y)

; ^r::Reload 