#lang racket/base

(provide map-key-code
         key-symbol-to-menu-key)

(define (map-key-code v)
  (hash-ref
   #hash((#xff08 . #\backspace)
         (#xffff . #\rubout)
         (#xff09 . #\tab)
         (#xfe20 . #\tab) ; left tab (sometimes from ctl-shift-tab)
         (#xff0a . #\newline)
         (#xff0d . #\return)
         (#xff1b . escape) ; escape
         (#xff50 . home)
         (#xff51 . left)
         (#xff52 . up)
         (#xff53 . right)
         (#xff54 . down)
         (#xff55 . prior)
         (#xff56 . next)
         (#xff57 . end)
         (#xff63 . insert)
         (#xff80 . #\space) ; keypad
         (#xff89 . #\tab) ; keypad
         (#xff8d . numpad-enter) ; was #\u3 in earlier versions
         (#xff91 . f1)
         (#xff92 . f2)
         (#xff93 . f3)
         (#xff94 . f4)
         (#xff95 . home) ; keypad
         (#xff96 . left) ; keypad
         (#xff97 . up) ; keypad
         (#xff98 . right) ; keypad
         (#xff99 . down) ; keypad
         (#xff9a . prior) ; keypad
         (#xff9b . next) ; keypad
         (#xff9c . end) ; keypad
         (#xff9e . insert) ; keypad
         (#xff9f . #\rubout) ; keypad
         (#xffaa . multiply)
         (#xffab . add)
         (#xffad . subtract)
         (#xffaf . divide)
         (#xffb0 . numpad0)
         (#xffb1 . numpad1)
         (#xffb2 . numpad2)
         (#xffb3 . numpad3)
         (#xffb4 . numpad4)
         (#xffb5 . numpad5)
         (#xffb6 . numpad6)
         (#xffb7 . numpad7)
         (#xffb8 . numpad8)
         (#xffb9 . numpad9)
         (#xffbe . f1)
         (#xffbf . f2)
         (#xffc0 . f3)
         (#xffc1 . f4)
         (#xffc2 . f5)
         (#xffc3 . f6)
         (#xffc4 . f7)
         (#xffc5 . f8)
         (#xffc6 . f9)
         (#xffc7 . f10)
         (#xffc8 . f11)
         (#xffc9 . f12)
         (#xffca . f13)
         (#xffcb . f14)
         (#xffcc . f15)
         (#xffe1 . shift)
         (#xffe2 . rshift)
         (#xffe3 . control)
         (#xffe4 . rcontrol))
   v
   #f))

(define (key-symbol-to-menu-key v)
  (hash-ref
   #hash((escape . #xff1b)
         (home . #xff50)
         (left . #xff51)
         (up . #xff52)
         (right . #xff53)
         (down . #xff54)
         (prior . #xff55)
         (next . #xff56)
         (end . #xff57)
         (insert . #xff63)
         (f1 . #xff91)
         (f2 . #xff92)
         (f3 . #xff93)
         (f4 . #xff94)
         (multiply . #xffaa)
         (add . #xffab)
         (subtract . #xffad)
         (divide . #xffaf)
         (numpad0 . #xffb0)
         (numpad1 . #xffb1)
         (numpad2 . #xffb2)
         (numpad3 . #xffb3)
         (numpad4 . #xffb4)
         (numpad5 . #xffb5)
         (numpad6 . #xffb6)
         (numpad7 . #xffb7)
         (numpad8 . #xffb8)
         (numpad9 . #xffb9)
         (f1 . #xffbe)
         (f2 . #xffbf)
         (f3 . #xffc0)
         (f4 . #xffc1)
         (f5 . #xffc2)
         (f6 . #xffc3)
         (f7 . #xffc4)
         (f8 . #xffc5)
         (f9 . #xffc6)
         (f10 . #xffc7)
         (f11 . #xffc8)
         (f12 . #xffc9)
         (f13 . #xffca)
         (f14 . #xffcb)
         (f15 . #xffcc))
   v
   #f))
