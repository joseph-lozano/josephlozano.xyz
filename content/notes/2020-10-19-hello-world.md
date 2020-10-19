%{
  title: "Hello World",
  description: "First Post",
}
---

```elixir
defrecord Person, first_name: nil, last_name: "Dudington" do
  def name record do # huh ?
    "#{record.first_name} #{record.last_name}"
  end
end

defrecord User, name: "José", age: 25

guy = Person.new first_name: "Guy"
guy.name

defmodule ListServer do
  @moduledoc """
  This module provides an easy to use ListServer, useful for keeping
  lists of things.
  """
  use GenServer.Behaviour
  alias Foo.Bar

  ### Public API
  @doc """
  Starts and links a new ListServer, returning {:ok, pid}

  ## Example

    iex> {:ok, pid} = ListServer.start_link

  """
  def start_link do
    :gen_server.start_link({:local, :list}, __MODULE__, [], [])
  end

  ### GenServer API
  def init(list) do
    {:ok, list}
  end

  # Clear the list
  def handle_cast :clear, list do
    {:noreply, []}
  end
end

{:ok, pid} = ListServer.start_link
pid <- {:foo, "bar"}

greeter = fn(x) -> IO.puts "hey #{x}" end
greeter.("Bob")
```


Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed sapien sapien. Proin accumsan diam quis maximus aliquet. Vestibulum varius nisl dolor, sed cursus risus semper in. Curabitur finibus, elit vel rutrum pretium, nisi diam pulvinar dui, quis eleifend metus quam non felis. Phasellus et dictum erat, ac feugiat nunc. Maecenas porta semper purus eu aliquet. Aenean tristique, erat sit amet pulvinar vestibulum, urna elit luctus libero, vitae sollicitudin justo lorem sit amet tellus.

Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam pulvinar felis et porta pretium. Phasellus sit amet mi vitae elit fringilla aliquet. Vestibulum ullamcorper imperdiet purus, eu aliquet ante blandit in. Cras semper pretium erat vel pulvinar. Donec semper nulla eu leo egestas scelerisque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Donec malesuada lacus rhoncus odio tincidunt blandit. Proin et lacus vitae felis ullamcorper semper eu vel diam. Morbi at risus eu mauris porta efficitur. Nullam eu est porttitor, ornare eros vel, rutrum enim. Morbi ornare, orci non condimentum convallis, nisi dolor porttitor neque, vitae bibendum nunc leo et est. Ut cursus sit amet nisi vitae elementum.



```
Pellentesque elit odio,
 condimentum id dui sit amet,
  viverra vestibulum tellus.
   Curabitur rutrum justo nec ante mollis cursus.
    Nam eget magna elementum, hendrerit eros id, posuere sem.
      Lorem ipsum dolor sit amet, consectetur a dipiscing elit.
      Ut faucibus lectus et diam lacinia fringilla.
Nullam lacinia consectetur sagittis. Praesent vitae tincidunt velit.

  Aenean lobortis velit sed vulputate accumsan. Aenean eu libero scelerisque tortor pretium bibendum a eu neque.
```

In hac habitasse platea dictumst. Suspendisse accumsan sem sed sapien aliquam venenatis. Sed lacinia massa nunc, egestas gravida justo gravida eu. Vestibulum elementum dui quis tellus lacinia, ultrices suscipit eros euismod. Ut eget ante pellentesque, viverra massa at, efficitur orci. Nullam diam eros, sodales vel laoreet pharetra, egestas eget justo. Integer hendrerit in libero ut varius. Cras non porttitor sapien, id accumsan dolor. Etiam est dolor, porttitor at tempus et, scelerisque vitae magna. Nulla vehicula diam et faucibus ornare.

Quisque blandit ex sed quam sagittis blandit. Vivamus laoreet quam non velit elementum cursus. Donec vitae est placerat, lacinia odio posuere, interdum leo. Suspendisse ac tincidunt neque. Praesent rhoncus blandit euismod. Donec sem turpis, pellentesque ac dictum vitae, rhoncus vel arcu. Integer pharetra in magna a euismod. Suspendisse consequat ante hendrerit turpis imperdiet porttitor. Quisque lacinia, eros vel accumsan mollis, sem dolor pretium lorem, vel laoreet metus justo eget nunc. Aenean ut nunc sit amet dolor pharetra mattis. Nulla semper risus dui, sit amet tempus ante cursus ac.

