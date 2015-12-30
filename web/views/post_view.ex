defmodule Macaw.PostView do
  use Macaw.Web, :view

  def render("index.json", %{posts: posts}) do
    %{data: render_many(posts, Macaw.PostView, "post.json")}
  end

  def render("show.json", %{post: post}) do
    %{data: render_one(post, Macaw.PostView, "post.json")}
  end

  def render("post.json", %{post: post}) do
    %{id: post.id,
      title: post.title,
      content: post.content,
      public: post.public,
      category: post.category,
      tags: post.tags,
      plublished: post.plublished}
  end
end
