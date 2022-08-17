// Run this example by adding <%= javascript_pack_tag 'hello_react' %> to the head of your layout file,
// like app/views/layouts/application.html.erb. All it does is render <div>Hello React</div> at the bottom
// of the page.

import React from "react";
import ReactDOM from "react-dom";
import App from "../components/App";

document.addEventListener("DOMContentLoaded", () => {
    const el = document.createElement("div");
    el.setAttribute("style", "width: 100%;");
    ReactDOM.render(<App />, document.body.appendChild(el));
});
