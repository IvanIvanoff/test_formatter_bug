defmodule TestFormatterTest do
  use ExUnit.Case
  doctest TestFormatter

  test "greets the world" do
    assert TestFormatter.hello() == :world
  end

  test "one passing test" do
    assert 1 == 1
  end

  test "one failing test" do
    assert 1 == 2
  end

  test "another passing test" do
    assert 1 == 1
  end

  test "another failing test" do
    assert 1 == 3
  end
end
