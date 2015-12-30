defmodule Macaw.UserView do
  use Macaw.Web, :view

  def render("index.json", %{users: users}) do
    %{data: render_many(users, Macaw.UserView, "user.json")}
  end

  def render("show.json", %{user: user}) do
    %{data: render_one(user, Macaw.UserView, "user.json")}
  end

  def render("user.json", %{user: user}) do
    %{id: user.id,
      name: user.name,
      email: user.email,
      password: user.password,
      account_type: user.account_type}
  end
end
