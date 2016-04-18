defmodule Uploader.PostUploadResizer do
  import Mogrify

  @types [{"thumbnail", 50}, {"medium", 150}, {"large", 500}]
  
  def create_files(filepath, types \\ @types) do
    for {type, size} <- types do
      spawn(fn ->
        IO.puts "\n BEFORE \n"
        open(filepath)
        |> copy
        |> resize(size)
        |> save(String.replace(filepath, "original", type))
        IO.puts "\n AFTER \n"
      end)
    end
  end
end