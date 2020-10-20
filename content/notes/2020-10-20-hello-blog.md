%{
  title: "Hello Blog",
  description: "What's this site all about?",
}
---

### What's this site all about?
Basically, me. This is my personal website. This is a place for me to blog, show off my projects, and express my opinions.

You can find a most up-to-date version of sections on the [home page](/), but at time of writing, there are the following sections:

* __Notes__ For brief writing, or quick thoughts. I will try to update this several times a week.
* __Writings__ Longer form essays. I will try to do one of these a month.
* __Garden__ A digital garden, of sorts. Pages here are around a topic of knowledge or interest.
Unlike notes or writings, pages here do not have a "published" date, and are always considered to be in progress.
* __Projects__ Portfolio pieces. Things I have built to show off to the world.
* __About__ About me as a person. This page includes my history and beliefs.
* __Now__ What I am up to now. Will try to update this every couple of months.

### The Stack
Unlike a lot of other blogs, this page is not (entirely) static.
It is built using the Elixir programming language and the Phoenix web framework.

The posts themeselves are done made with Markdown, and compiled into using _nimple publisher_. Syntax highlighting is done via highlight.js.

```elixir
defmodule Foo do
  @bar "bar"
  def baz, do: IO.puts(@bar)
end
```

### Why?

My previous blog (little as it was) was written with Hugo, and while I think that Hugo is a fantastic tool, it wasn't for me.

#### Themes were hard
While there was a plentitude of custom themes out there for hugo sites, I found editing them to find my wants and needs just too difficult. Certainly, not beyond my ability, but beyond my willingness to spend time on.

#### I wanted to use a toolchain I knew
My previous job was 100% Elixir. I just accepted a new job working in Elixir. I know Elixir and Phoenix Framework forwards and backwards. I know that I can customize this site exactly how I want. With Hugo, or any of the other static site generators, I would be at the mercy of my time/willingness to learn those tools.

#### Benefits of being a dynamic site
Besides just being built with a toolchain I knew, there are other benefits to using a server-powered blog. In the future, I can add dynamic features, such as collecting email addresses and sending email updates, or I could write my own analytics; All without using third-party providers.

One feature I would like to work on is automatically publishing posts to sites such as [Dev.to](https://dev.to).


### Open Source
You can find the source code for the site on [Github](https://github.com/joseph-lozano/josephlozano.xyz)
