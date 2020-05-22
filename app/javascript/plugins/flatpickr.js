import flatpickr from "flatpickr";
document.addEventListener('turbolinks:load', () => {
  flatpickr(".datepicker", {});
});
