ExUnit.start()

defmodule NewmathExTest do
  use ExUnit.Case
  defmodule NewmathEx do
  @moduledoc """
  A module for doing new math.
  """

  @doc """
  Divide the numerator (num) by the denominator (dem)

  ## Examples

      iex> NewmathEx.div(10, 4)
      {:ok, 2.5}

  """
  def div(_num, 0), do: {:error, "Cannot divide by zero"}
  def div(num, dem), do: {:ok, Kernel.div(num, dem)}
end

  describe "div/1" do
    test "ok" do
      assert NewmathEx.div(4, 2) == {:ok, 2}
    end

    test "by zero" do
      assert NewmathEx.div(4, 0) == {:error, "Cannot divide by zero"}
    end
  end
end
