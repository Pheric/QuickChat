stuff = fn x -> x + 4 end # anonymous function
case stuff.(8) do # the period is required to call the anonymous function
  12 ->
    greeting = {"Hello", "Bonjour", "Hola"} # define a tuple of three strings
    IO.puts "#{elem(greeting, 0)} World!" # use string interpolation to print the first element in the tuple
  _ ->
    IO.puts "This should never print"
end