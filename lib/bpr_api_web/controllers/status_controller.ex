defmodule BprApiWeb.StatusController do
  use BprApiWeb, :controller

  def nodes(conn, _params) do
    result = [
      %{name: "node_1", ip4_address: "1.1.1.1"},
      %{name: "node_2", ip4_address: "2.2.2.2"}
    ]

    json(conn, result)
  end
end
