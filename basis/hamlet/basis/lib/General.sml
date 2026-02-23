(*
 * (c) Andreas Rossberg 2001-2025
 *
 * Standard ML Basis Library
 *)


open GENERAL_sig
structure General :> GENERAL =
struct
  type unit           = {}
  type exn            = exn

  exception Bind      
  exception Chr       
  exception Div       
  exception Domain    
  exception Fail of string     
  exception Match     
  exception Overflow  
  exception Size      
  exception Span      
  exception Subscript 

  val exnName = raise (Fail "TODO")
  val exnMessage      = exnName

  datatype order      = LESS | EQUAL | GREATER

  fun !(ref v)        = v
  val op:=            = op:=

  fun o (f, g) a       = f(g a)
  fun before (a, b)      = a
  fun ignore a        = () 
end

open General;
