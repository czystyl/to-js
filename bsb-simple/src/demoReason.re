let rec fib = x =>
  switch (x) {
  | _ when x < 2 => 1
  | _ => fib(x - 1) + fib(x - 2)
  };

print_endline("Hello, world!" ++ string_of_int(fib(1)));