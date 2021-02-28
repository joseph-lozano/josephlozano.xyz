defmodule ProxyWeb.LayoutView do
  use ProxyWeb, :view

  @current_class "border-indigo-500 text-gray-900 inline-flex items-center px-1 pt-1 border-b-2 text-sm font-medium"
  @default_class "border-transparent text-gray-500 hover:border-gray-300 hover:text-gray-700 inline-flex items-center px-1 pt-1 border-b-2 text-sm font-medium"

  def class("/", "home") do
    @current_class
  end

  def class(path, section) do
    if String.starts_with?(path, "/#{section}") do
      @current_class
    else
      @default_class
    end
  end
end
