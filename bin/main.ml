open Base;;

List.map ~f:(fun x -> x * 2) [ 1; 2; 3 ]

let is_zero x =
  match x with
  | 0 -> true
  | _ -> false
;;

let () =
  Dream.run
  @@ Dream.logger
  @@ Dream.router [
    Dream.get "/" (fun _ ->
      Dream.html (hello "world"));
  ]

Dream.run (Dream.logger (Dream.router [Dream.get "/" ...]))

let hello who =
  <html>
  <body>
    <h1>Hello, <%s who %>!
(* let () = print_endline string_of_int inc_int 1 *)
