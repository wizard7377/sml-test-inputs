(*
 * (c) Andreas Rossberg 2002-2025
 *
 * Standard ML Basis Library
 *)

open General 
signature TEXT =
sig
   open General 
structure Char : CHAR
   open General 
structure String : STRING
   open General 
structure Substring : SUBSTRING
   open General 
structure CharVector : MONO_VECTOR
   open General 
structure CharArray : MONO_ARRAY
   open General 
structure CharVectorSlice : MONO_VECTOR_SLICE
   open General 
structure CharArraySlice : MONO_ARRAY_SLICE
   sharing type Char.char = String.char = Substring.char
     = CharVector.elem = CharArray.elem = CharVectorSlice.elem
     = CharArraySlice.elem
   sharing type Char.string = String.string = Substring.string
     = CharVector.vector = CharArray.vector
     = CharVectorSlice.vector = CharArraySlice.vector
   sharing type CharArray.array = CharArraySlice.array
   sharing type CharVectorSlice.slice = CharArraySlice.vector_slice
end;
