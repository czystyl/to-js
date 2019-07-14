let rec fib = x =>
  switch (x) {
  | _ when x < 2 => 1
  | _ => fib(x - 1) + fib(x - 2)
  };

let cAdd = (a, b, oper) => oper(a, b);
let (+) = (x, y) => string_of_int(x) ++ string_of_int(y);
let a = cAdd(2, 200, (+));

print_endline("Hello, world!" ++ string_of_int(fib(1)));