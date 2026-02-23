(*
 * (c) Andreas Rossberg 2013-2025
 *
 * Standard ML Basis Library
 *)

open General 
structure CommandLine : COMMAND_LINE =
struct
  val name      = CommandLine.name  : unit -> string
  val arguments = CommandLine.arguments  : unit -> string list
end;
