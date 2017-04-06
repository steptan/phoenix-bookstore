defmodule Bookstore.Book do
  use Bookstore.Web, :model

  schema "books" do
    field :title, :string
    field :author, :string
    field :pubdate, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :author, :pubdate])
    |> validate_required([:title, :author, :pubdate])
  end
end
