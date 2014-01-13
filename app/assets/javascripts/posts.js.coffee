# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

class App
  start: =>
    url = "http://0.0.0.0:3000/posts.json"
    $.ajax({
      url: url,
      data: {},
      success: @dataLoaded,
      error: @fuckup,
      dataType: "json"
    });

  dataLoaded: (json)=>
    console.log(json)

  fuckup: (json) =>
    console.log("not good")
    window.location.href="/users/sign_in"


app = new App()
app.start()


