pr <- plumber$new()
pr$registerHook("preroute", function(req){
  cat("Routing a request for", req$PATH_INFO, "...\n")
})
pr$registerHooks(list(
  preserialize=function(req, value){
    print("About to serialize this value:")
    print(value)
    
    # Must return the value since we took one in. Here we're not choosing
    # to mutate it, but we could.
    value
  },
  postserialize=function(res){
    print("We serialized the value as:")
    print(res$body)
  }
))

pr$handle("GET", "/", function(){ 123 })
