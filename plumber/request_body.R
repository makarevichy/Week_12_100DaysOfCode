#' @post /user
function(req, id, name){
  list(
    id = id,
    name = name,
    raw = req$postBody
  )
}

# curl --data "id=123&name=Jennifer" "http://localhost:YOUR_PORT/user"