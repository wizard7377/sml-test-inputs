(*
 * (c) Andreas Rossberg 2001-2025
 *
 * Standard ML Basis Library
 *
 * Note: Incomplete.
 *)

open General 
signature OS =
sig
  open General 
structure FileSys : OS_FILE_SYS
  open General 
structure Path : OS_PATH
  open General 
structure Process : OS_PROCESS
(*
  open General 
structure IO : OS_IO
*)
  eqtype syserror
  exception SysErr of string * syserror option
(*
  val errorMsg : syserror -> string
  val errorName : syserror -> string
  val syserror : string -> syserror option
*)
end;
