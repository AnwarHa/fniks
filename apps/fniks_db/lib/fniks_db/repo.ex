defmodule FniksDb.Repo do
  use Ecto.Repo,
    otp_app: :fniks_db,
    adapter: Ecto.Adapters.MyXQL
end
