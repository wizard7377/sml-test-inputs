(*
 * (c) Andreas Rossberg 2001-2025
 *
 * Standard ML Basis Library
 *)

open General 
open MATH_sig
structure Math :> MATH where type real = real =
struct
  type real = real

  val e     = Math.e  ()  : real
  val pi    = Math.pi  () : real

  val sqrt  = Math.sqrt   : real -> real
  val sin   = Math.sin    : real -> real
  val cos   = Math.cos    : real -> real
  val tan   = Math.tan    : real -> real
  val asin  = Math.asin   : real -> real
  val acos  = Math.acos   : real -> real
  val atan  = Math.atan   : real -> real
  val atan2 = Math.atan2  : real * real -> real
  val exp   = Math.exp    : real -> real
  val pow   = Math.pow    : real * real -> real
  val ln    = Math.ln     : real -> real
  val log10 = Math.log10  : real -> real
  val sinh  = Math.sinh   : real -> real
  val cosh  = Math.cosh   : real -> real
  val tanh  = Math.tanh   : real -> real
end;
