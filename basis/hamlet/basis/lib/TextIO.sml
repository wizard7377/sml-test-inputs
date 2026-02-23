(*
 * (c) Andreas Rossberg 2001-2025
 *
 * Standard ML Basis Library
 *
 * Note: Incomplete.
 *)

open General 
open TEXT_IO_sig
structure TextIO :> TEXT_IO =
struct
  open General 
structure StreamIO : TEXT_STREAM_IO =
  struct
    type vector   = CharVector.vector
    type elem     = Char.char
  end

  type vector     = StreamIO.vector
  type elem       = StreamIO.elem
  type instream   = int
  type outstream  = int

  val stdIn       = TextIO.stdIn  () : instream
  val stdOut      = TextIO.stdOut  () : outstream
  val stdErr      = TextIO.stdErr  () : outstream

  val openIn      = TextIO.openIn  : string -> instream
  val openOut     = TextIO.openOut  : string -> outstream
  val openAppend  = TextIO.openAppend  : string -> outstream
  val closeIn     = TextIO.closeIn  : instream -> unit
  val closeOut    = TextIO.closeOut  : outstream -> unit

  val input       = TextIO.input  : instream -> vector
  val input1      = TextIO.input1  : instream -> elem option
  val inputN      = TextIO.inputN  : instream * int -> vector
  val inputAll    = TextIO.inputAll  : instream -> vector
  val inputLine   = TextIO.inputLine  : instream -> string option
  val endOfStream = TextIO.endOfStream  : instream -> bool

  val output      = TextIO.output  : outstream * vector -> unit
  val output1     = TextIO.output1  : outstream * elem -> unit
  val flushOut    = TextIO.flushOut  : outstream -> unit

  fun print s     = (output(stdOut, s); flushOut stdOut)

  fun outputSubstr(os, ss) = output(os, Substring.string ss)

(*
  fun scanStream scanFn strm  =
      let
        val instrm = getInstream strm
      in
        case (scanFn StreamIO.input1 instrm) of
          NONE => NONE
        | SOME(v, instrm') => ( setInstream (strm, instrm'); SOME v )
      end
*)
end;
