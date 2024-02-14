// home logics
var userSearchForm = document.getElementById("user-search")

userSearchForm.addEventListener('submit', () => {
  setTimeout(() => {
    let usernameField = userSearchForm.querySelector("#username")
    let submitButton = userSearchForm.querySelector("#submit")

    submitButton.disabled = 'true'
    usernameField.disabled = 'true'

    submitButton.innerHTML = 'Searching...'
  }, 500)
}, false)

