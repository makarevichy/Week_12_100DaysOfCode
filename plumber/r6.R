pr <- plumber$new()

pr$filter("myFilter", function(req){
  req$filtered <- TRUE
  forward()
})

pr$handle("GET", "/", function(req){
  paste("Am I filtered?", req$filtered)
})
