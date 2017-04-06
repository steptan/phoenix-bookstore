defmodule Bookstore.BookView do
  use Bookstore.Web, :view

  def render("index.json", %{books: books}) do
    %{data: render_many(books, Bookstore.BookView, "book.json")}
  end

  def render("show.json", %{book: book}) do
    %{data: render_one(book, Bookstore.BookView, "book.json")}
  end

  def render("book.json", %{book: book}) do
    %{id: book.id,
      title: book.title,
      author: book.author,
      pubdate: book.pubdate}
  end
end
