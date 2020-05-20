// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
  const startDate = document.querySelector("#booking_start_date_3i");
  const endDate = document.querySelector("#booking_end_date_3i");
  const pricePerDay = document.querySelector("#price-per-day");

 if (startDate) {
  const price = Number.parseInt(pricePerDay.innerText, 10)
  const updatePrice = event => {
    const totalDays = endDate.value - startDate.value;
    pricePerDay.innerText = price * totalDays;
  }

  startDate.addEventListener("change", updatePrice)
  endDate.addEventListener("change", updatePrice)
 }

});
