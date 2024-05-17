
defmodule Newmath do
  def div(numerator, denominator) do
    Kernel.div(numerator, denominator)
  end
end

defmodule Main do
  def print_to_screen(message, newline \\ true) do
    if newline do
      IO.puts(message)
    else
      IO.write(message)
    end
  end

  def main do
    print_to_screen("Newmath (type 'exit' to exit program)")

    loop()
  end

  defp loop do
    print_to_screen("Numerator: ", false)
    numerator_input = IO.gets("") |> String.trim()

    if numerator_input == "exit" do
      :ok
    else
      print_to_screen("Denominator: ", false)
      denominator_input = IO.gets("") |> String.trim()

      numerator = String.to_integer(numerator_input)
      denominator = String.to_integer(denominator_input)

      result = Newmath.div(numerator, denominator)
      print_to_screen("#{numerator} / #{denominator} = #{result}")

      loop()
    end
  end
end

Main.main()
