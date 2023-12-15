// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


import { Application } from "@hotwired/stimulus"
import { definitionsFromContext } from "@hotwired/stimulus-webpack-helpers 
application.load(definitionsFromContext(context))


const application = Application.start()
const context = require.context("../controllers", true, /\.js$/)
import "bootstrap"
//= require jquery3
//= require popper
//= require bootstrap
//= require_tree .

$(document).ready(function(){
    $('.dropdown-toggle').dropdown();
});
$(document).ready(function(){
    jQuery('.dropdown-toggle').dropdown();
});
