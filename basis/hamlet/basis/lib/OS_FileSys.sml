(*
 * (c) Andreas Rossberg 2001-2025
 *
 * Standard ML Basis Library
 *
 * Note: Incomplete.
 *)

open General 
structure OS =
struct
  open OS

  open General 
structure FileSys : OS_FILE_SYS =
  struct
    val getDir = OS.FileSys.getDir  : unit -> string
    val chDir  = OS.FileSys.chDir  : string -> unit
    val mkDir  = OS.FileSys.mkDir  : string -> unit
    val rmDir  = OS.FileSys.rmDir  : string -> unit
    val isDir  = OS.FileSys.isDir  : string -> bool
  end
end;
