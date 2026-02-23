(*
 * (c) Andreas Rossberg 2013-2025
 *
 * Standard ML Basis Library
 *)

open General 
structure OS =
struct
  open OS

  open General 
open OS_PROCESS_sig
structure Process :> OS_PROCESS =
  struct
    type status = int

    val success = 0
    val failure = 1

    fun isSuccess st = st = 0
    fun terminate st = (OS.Process.terminate  : status -> 'a) st
    val exit = terminate
  end
end;
