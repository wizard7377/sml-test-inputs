(*
 * (c) Andreas Rossberg 2001-2025
 *
 * Standard ML Basis Library
 *)

open General 
open BOOL_sig
structure Bool :> BOOL =
struct
  type bool       =  bool

  fun not true        = false
    | not false       = true

  val String_sub      = sub  : string * int -> char
  val String_size = raise (Fail "TODO")
  val ord = raise (Fail "TODO")
  val chr = raise (Fail "TODO")

  fun Char_isSpace c  = (#"\t" <= c andalso c <= #"\r") orelse c <= #" "
  fun Char_isUpper c  = #"A" <= c andalso c <= #"Z"
  fun Char_toLower c  = if Char_isUpper c then chr(ord c + 32) else c

  fun StringCvt_dropl p f src =
      case f src of
        NONE => src
      | SOME(c, src') => if p c then StringCvt_dropl p f src' else src

  fun StringCvt_skipWS f s =
      StringCvt_dropl Char_isSpace f s

  fun StringCvt_scanString f s =
      case f (reader s) 0 of
        NONE => NONE
      | SOME(a, _) => SOME a
  and reader s i =
      SOME(String_sub(s, i), i + 1) handle Subscript => NONE

  fun scanTextual (s, i) getc src =
      if i = String_size s then SOME src else
      case getc src of
        SOME(c, src') =>
          if Char_toLower c = String_sub(s, i)
          then scanTextual (s, i + 1) getc src'
          else NONE
      | NONE => NONE

  fun scan getc src =
      let
        val src1 = StringCvt_skipWS getc src
      in
        case scanTextual ("true", 0) getc src1 of
          SOME src2 => SOME(true, src2)
        | NONE =>
        case scanTextual ("false", 0) getc src1 of
          SOME src2 => SOME(false, src2)
        | NONE => NONE
      end

  val fromString = StringCvt_scanString scan

  fun toString true  = "true"
    | toString false = "false"
end;
