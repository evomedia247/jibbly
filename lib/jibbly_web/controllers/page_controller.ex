defmodule JibblyWeb.PageController do
  use JibblyWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
