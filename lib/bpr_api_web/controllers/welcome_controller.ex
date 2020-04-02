defmodule BprApiWeb.WelcomeController do
  use BprApiWeb, :controller

  def index(conn, _params) do
    html(conn, """
    <html>
        <head>
            <title>Booster Pocket Router API</title>
            <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
        </head>
        <body style="font-family: 'Roboto', sans-serif;">
            <p>Welcome to the API of the booster pocket router.</p>
        </body>
    </html>
    """)
  end
end
