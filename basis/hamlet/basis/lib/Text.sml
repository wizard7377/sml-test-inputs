(*
 * (c) Andreas Rossberg 2002-2025
 *
 * Standard ML Basis Library
 *)

open General 
open TEXT_sig
structure Text :> TEXT
  where type Char.char = Char.char
(* redundant and illegal
  where type String.string = String.string
  where type Substring.substring = Substring.substring
*)
  where type CharVector.vector = CharVector.vector
  where type CharArray.array = CharArray.array
  where type CharVectorSlice.slice = CharVectorSlice.slice
  where type CharArraySlice.slice = CharArraySlice.slice =
struct
  open General 
structure Char            = Char
  open General 
structure String          = String
  open General 
structure Substring       = Substring
  open General 
structure CharVector      = CharVector
  open General 
structure CharArray       = CharArray
  open General 
structure CharVectorSlice = CharVectorSlice
  open General 
structure CharArraySlice  = CharArraySlice
end;
