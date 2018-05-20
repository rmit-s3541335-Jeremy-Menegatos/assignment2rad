alert("Hello! I am an alert box!!");
$.ajax({
  url: "https://api.apiscience.com/v1/monitors/1572022",
  headers: {
    "Authorization" : "Bearer NN_6xxxxx"
  }
}).done(function(data) {
  $('#api').append(JSON.stringify(data))
});