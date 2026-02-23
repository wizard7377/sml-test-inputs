(*
 * (c) Andreas Rossberg 2001-2025
 *
 * Standard ML Basis Library
 *)

open General 
structure StringCvt = struct type ('a, 'b) reader = 'b -> ('a * 'b) option end

open General 
signature BOOL =
sig
  type bool = bool
  val not : bool -> bool
  val scan : (char, 'a) StringCvt.reader -> (bool, 'a) StringCvt.reader
  val fromString : string -> bool option
  val toString : bool -> string
end;
