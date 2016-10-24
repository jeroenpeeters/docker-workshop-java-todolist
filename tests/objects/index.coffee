_ = require 'lodash'

module.exports = -> objects

objects =

  "signUpButton":
    locator: "css"
    value: "a[href='/register']"
  "submitButton":
    locator: "css"
    value: "button.btn.btn-primary[type='submit']"

  createTodoLink:
    locator: "css"
    value: "a[href='/todos/new']"

  "nameInput":
    locator: "css"
    value: "input[name='name']"
  "emailInput":
    locator: "css"
    value: "input[name='email']"
  "passwordInput":
    locator: "css"
    value: "input[name='password']"
  "confirmPasswordInput":
    locator: "css"
    value: "input[name='confirmationPassword']"

  titleInput:
    locator: "css"
    value: "input#title"

  todoItem: (title) ->
    locator: "xpath"
    value: "//td[text()='#{title}']"
