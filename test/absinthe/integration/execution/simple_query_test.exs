defmodule Elixir.Absinthe.Integration.Execution.SimpleQueryTest do
  use ExUnit.Case, async: true

  @query """
  query { thing(id: "foo") { name } }
  """

  test "scenario #1" do
    assert {:ok, %{data: %{"thing" => %{"name" => "Foo"}}}} ==
             Absinthe.run(@query, Absinthe.Fixtures.ThingsSchema, [])
  end
end
