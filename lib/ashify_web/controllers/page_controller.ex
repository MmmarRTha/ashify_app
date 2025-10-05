defmodule AshifyWeb.PageController do
  use AshifyWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
