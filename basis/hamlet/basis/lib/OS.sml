(*
 * (c) Andreas Rossberg 2001-2025
 *
 * Standard ML Basis Library
 *
 * Note: Incomplete.
 *)

open General 
open OS_sig
structure OS :> OS =
struct
  open OS

  type syserror = int
  exception SysErr of string * syserror option  (* defunct dummy *)
end;
