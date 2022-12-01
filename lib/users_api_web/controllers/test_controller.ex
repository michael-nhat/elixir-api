defmodule UsersApiWeb.TestController do
  use UsersApiWeb, :controller

  def get(conn, %{"id" => id}) do
    send_resp(conn, 201, id + 1)
  end

  def abc(conn, %{"id" => idx}) do
    case Integer.parse(idx) do
      {id, _} when id > 0 ->
        json conn, %{id: id + 1}
    end
  end
end
