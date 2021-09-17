module Time = struct
  let now = Unix.gettimeofday

  let sleep = Js_of_ocaml_lwt.Lwt_js.sleep
end

include Gitlab_core.Make (Time) (Cohttp_lwt_jsoo.Client)
