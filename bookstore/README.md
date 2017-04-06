# Bookstore
Our Steps
  * mix phoenix.gen.json Book books title:string author:string pubdate:string
  * vim web/router.ex
    +   scope "/api", Bookstore do
    +     pipe_through :api
    +     resources "/books", BookController, except: [:new, :edit]
    +   end
  * mix ecto.create
  * mix ecto.migrate
  * iex -S mix phoenix.server

To start your Phoenix app:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Start Phoenix endpoint with `mix phoenix.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
