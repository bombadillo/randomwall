http = require 'http'
q = require 'q'

class WebPageRetriever
  Get: (url) ->
    deferred = q.defer()
    data = ''
    http.get url, (res) ->
      res.on 'data', (chunk) ->
        data += chunk
      res.on 'end', ->
        deferred.resolve data
      res.on 'error', ->
        deferred.reject()
    return deferred.promise

module.exports = new WebPageRetriever()
