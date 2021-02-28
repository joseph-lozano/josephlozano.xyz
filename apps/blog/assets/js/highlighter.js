import hljs from "highlight.js/lib/core";
import elixir from "highlight.js/lib/languages/elixir";
import javascript from "highlight.js/lib/languages/javascript";
import erb from "highlight.js/lib/languages/erb";
import bash from "highlight.js/lib/languages/bash";
import ruby from "highlight.js/lib/languages/ruby";
import yaml from "highlight.js/lib/languages/yaml";
import json from "highlight.js/lib/languages/json";
import xml from "highlight.js/lib/languages/xml";

// Yeah, this isn't very sexy, but I'm trying to keep the bundle small
// by only opting into languages I use in blog posts.
hljs.registerLanguage("elixir", elixir);
hljs.registerLanguage("javascript", javascript);
hljs.registerLanguage("bash", bash);
hljs.registerLanguage("eex", erb);
hljs.registerLanguage("ruby", ruby);
hljs.registerLanguage("yaml", yaml);
hljs.registerLanguage("json", json);
hljs.registerLanguage("html", xml);

window.highlightAll = function (where = document) {
  where.querySelectorAll("pre code").forEach((block) => {
    const lang = block.getAttribute("class");
    const { value: value } = hljs.highlight(lang, block.innerText);
    block.innerHTML = value;
  });
};

window.highlightAll(); // this covers on page load
