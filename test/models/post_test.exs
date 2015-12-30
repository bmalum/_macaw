defmodule Macaw.PostTest do
  use Macaw.ModelCase

  alias Macaw.Post

  @valid_attrs %{category: "some content", content: "some content", plublished: "2010-04-17", public: true, tags: [], title: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Post.changeset(%Post{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Post.changeset(%Post{}, @invalid_attrs)
    refute changeset.valid?
  end
end
