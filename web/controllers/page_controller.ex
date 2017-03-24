defmodule PhxSqliteEcto2.PageController do
  use PhxSqliteEcto2.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
