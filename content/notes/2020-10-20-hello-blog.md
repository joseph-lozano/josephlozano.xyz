%{
  title: "Hello Blog",
  draft: true
}
---

#### What's this site all about?
Basically, me. This is my personal website. This is a place for me to blog, show off my projects, and express my opinions.

You can find a most up-to-date version of sections on the [home page](/), but at time of writing, there are the following sections:

* __Notes__ For brief writing, or quick thoughts. I will try to update this several times a week.
* __Writings__ Longer form essays. I will try to do one of these a month.
* __Garden__ A digital garden, of sorts. Pages here are around a topic of knowledge or interest.
Unlike notes or writings, pages here do not have a "published" date, and are always considered to be in progress.
* __Projects__ Portfolio pieces. Things I have built to show off to the world.
* __About__ About me as a person. This page includes my history and beliefs.
* __Now__ What I am up to now. Will try to update this every couple of months.

##### The Stack
Unlike a lot of other blogs, this page is not (entirely) static.
It is built using the Elixir programming language and the Phoenix web framework.

The posts themeselves are done made with Markdown, and compiled into using _nimple publisher_. Syntax highlighting is done via highlight.js.

```elixir
defmodule Foo do
  @bar "bar"
  def baz, do: @bar
end
```
