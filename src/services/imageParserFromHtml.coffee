WebPageRetriever = require './webPageRetriever'
ImageUrlCreator = require './imageUrlCreator'
cheerio = require 'cheerio'
q = require 'q'

class ImageParserFromHtml

  GetImageUrls: (url) =>
    @deferred = q.defer()
    WebPageRetriever.Get(url).then @onHtml, @onHtmlError
    return @deferred.promise

  onHtml: (html) =>
    urls = @getImageUrls html
    @deferred.resolve urls

  getImageUrls: (html) ->
    $ = cheerio.load(html)
    images = $('.thumb')
    return ImageUrlCreator.CreateFromArray(images)

  onHtmlError: ->
    console.log 'fail'

module.exports = new ImageParserFromHtml()
