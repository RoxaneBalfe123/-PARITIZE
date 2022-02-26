// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)

// // stimulus starter
// import { Application } from "stimulus"
// import { definitionsFromContext } from "stimulus/webpack-helpers"

// const application = Application.start()
// const context = require.context("./controllers", true, /\.js$/)
// application.load(definitionsFromContext(context))


// const search = document.querySelector("#search");

// search.addEventListener("click", ()=> {
//   const form = document.querySelector("#search-form")
//   form.classList.toggle("d-none")



// })
