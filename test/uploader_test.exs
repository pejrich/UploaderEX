defmodule UploaderTest do
  use ExUnit.Case
  doctest Uploader

  test "the truth" do
    Uploader.PostUploadServer.start_link
    Uploader.PostUploadServer.upload("test/images/test.png", "test.png")
  end
end


# defmodule LocIm.Api.PostControllerTest do
#   use LocIm.ConnCase

#   @opts LocIm.Router.init([])

#   @valid_post_params %{longitude: 10.66,
#                        latitude: 100.66,
#                        image: %Plug.Upload{content_type: "image/png", filename: "test.png", path: Path.expand("test/support/images/test.png")},
#                        category: "food",
#                        reaction: true,
#                        status: "test status"}

#   test "POST /api/posts", %{conn: conn} do
#     {:ok, user} = LocIm.Repo.insert(LocIm.User.changeset(%LocIm.User{auth_token: "123"}, %{username: "tester", full_name: "test name"}))
#     params = Map.put(@valid_post_params, :auth_token, user.auth_token)
#     IO.puts "\n\npara\n #{inspect params} \n\n\n"
#     count = LocIm.Post |> LocIm.Repo.all |> length
#     post conn, "/api/posts", %{post: params}
#     assert (LocIm.Post |> LocIm.Repo.all |> length) == count + 1
#     # response = LocIm.Router.call(conn, @opts)
#     # IO.puts "\n\nconn\n #{inspect conn} \n\n\n"
#     # IO.puts "\n\nRESP\n #{inspect response} \n\n\n"
#     # assert html_response(conn, 200)
#   end
# end
