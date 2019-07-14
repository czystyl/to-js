
let rec fib n = 
  match n with
  | _ when n < 2 -> 1
  | _ -> fib (n -1) + fib (n-2);; 

(* let rec fib2 n =
  if n < 2 then
    1
  else
    fib2 (n-1) + fib2 (n-2);; *)


print_endline ("Hello, world!" ^  string_of_int (fib 40));;
(* print_endline ("Hello, world!" ^  string_of_int (fib2 40));; *)
