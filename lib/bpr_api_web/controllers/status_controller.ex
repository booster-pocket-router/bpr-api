defmodule BprApiWeb.StatusController do
  use BprApiWeb, :controller

  def nodes(conn, _params) do
    result = [
      %{
        name: "node_1",
        ip_address: "1.1.1.1",
        ip6_address: "2001:0db8:85a3:0000:0000:8a2e:0370:7334"
      },
      %{
        name: "node_2",
        ip_address: "2.2.2.2",
        ip6_address: "2001:0db8:85a3:0000:0000:8a2e:0370:7335"
      }
    ]

    json(conn, result)
  end

  def utilization(conn, _params) do
    result = [
      %{
        name: "node_1",
        utilization: [
          %{
            timestamp: "2020-04-01T09:00:00.000Z",
            bytes: 1_000_000
          },
          %{
            timestamp: "2020-04-01T09:10:00.000Z",
            bytes: 500_000
          },
          %{
            timestamp: "2020-04-01T09:20:00.000Z",
            bytes: 300_000
          }
        ]
      },
      %{
        name: "node_2",
        utilization: [
          %{
            timestamp: "2020-04-01T09:00:00.000Z",
            bytes: 0
          },
          %{
            timestamp: "2020-04-01T09:10:00.000Z",
            bytes: 50_000
          },
          %{
            timestamp: "2020-04-01T09:20:00.000Z",
            bytes: 500_000
          }
        ]
      }
    ]

    json(conn, result)
  end
end
