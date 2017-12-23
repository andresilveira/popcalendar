document.addEventListener('turbolinks:load', () => {
  $('.user-role-select').change((event) => {
    $(event.target).closest('form').submit();
  });
});
