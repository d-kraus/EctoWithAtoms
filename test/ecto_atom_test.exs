defmodule EctoAtomTest do
  use ExUnit.Case

  test "Cast atom" do
    assert EctoAtom.cast(:test) == {:ok, :test}
  end

  test "Cast results in error" do
    assert EctoAtom.cast(123) == :error
  end

  test "Load string from DB" do
    assert EctoAtom.load("test") == {:ok, :test}
  end

  test "Dump atom" do
    assert EctoAtom.dump(:test) == {:ok, "test"}
  end

  test "Dump results in error" do
    assert EctoAtom.dump("test") == :error
  end

  test "Equal? returns true" do
    assert EctoAtom.equal?(:test, :test)
  end

  test "Equal? returns false" do
    refute EctoAtom.equal?(:foo, :bar)
  end
end
