(** Common code between the fake and real servers for dealing with Networks *)

module D=Debug.Debugger(struct let name="xapi" end)
open D

type backend = 
    {
      attach: __context:Context.t -> self:API.ref_network -> unit;
      detach: string -> unit;
    }

