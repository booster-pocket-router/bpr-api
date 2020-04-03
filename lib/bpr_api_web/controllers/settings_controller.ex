defmodule BprApiWeb.SettingsController do
  use BprApiWeb, :controller

  def set(conn, %{"name" => name, "value" => value}) do
    settings =
      Application.get_env(:bpr_api, :settings_path)
      |> Path.expand()
      |> Path.join("settings.json")

    result =
      with {:ok, body} <- File.read(settings),
           {:ok, json} <- Jason.decode(body),
           {:ok, _setting_exists} <- Map.fetch(json, name),
           updated_settings <- Map.put(json, name, value),
           {:ok, updated_settings_as_jason} <- Jason.encode(updated_settings),
           :ok <- File.write(settings, updated_settings_as_jason) do
        :ok
      else
        _error -> :internal_server_error
      end

    conn
    |> send_resp(result, "")
  end

  def get(conn, %{"name" => name}) do
    settings =
      Application.get_env(:bpr_api, :settings_path)
      |> Path.expand()
      |> Path.join("settings.json")

    with {:ok, body} <- File.read(settings),
         {:ok, json} <- Jason.decode(body),
         {:ok, setting} <- Map.fetch(json, name) do
      json(conn, %{result: setting})
    else
      _error -> send_resp(conn, :internal_server_error, "")
    end
  end
end
