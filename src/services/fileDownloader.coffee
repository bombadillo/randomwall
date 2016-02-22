fs = require 'fs'
http = require 'http'

class FileDownloader
  download: (uri, fileName) ->
    console.log uri
    console.log fileName
    file = fs.createWriteStream fileName
    request = http.get uri, (response)->
      response.pipe file

  onDownload: ->
    console.log 'done'

module.exports = new FileDownloader()
