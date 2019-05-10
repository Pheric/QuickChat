# define a module named FunctionTypes (use CamelCase)
defmodule FunctionTypes do
  # normal public function. Use snake_case
  def function_one(s) do
    IO.write s
  end

  # normal private function using the keyword list format
  defp function_two(s), do: IO.write s

  # another normal function, but with guards
  def demo(s) when is_tuple(s) and tuple_size(s) >= 4 do
    IO.write "You: "

    # normal anonymous function
    function_three = fn s -> IO.write s end

    # anonymous function using the capture syntax
    function_four = &IO.write(&1)

    # normal function call. Use elem/2 to get the first element of the tuple
    function_one(elem(s, 0))
    # function call without parenthesis (not necessary with one argument)
    function_two elem(s, 1)
    # a period before the arguments is necessary to differentiate anonymous functions from normal ones
    function_three.(elem(s, 2))
    # use the tuple_size function to get the size of the tuple. It's "size" because this is a O(1) operation, not O(n)
    function_four.(elem(s, tuple_size(s) - 1))

    IO.write "\n"
  end
end


defmodule Message do
  defstruct sender: "You", receiver: "World", message: "Hello!"

  def send(msg), do: IO.puts("#{msg.sender}: @#{msg.receiver} #{msg.message}")
end