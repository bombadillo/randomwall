Config = require '../common/config'
ImageParserFromHtml = require './imageParserFromHtml'
RandomNumberGenerator = require './randomNumberGenerator'
q = require 'q'

class RandomImageRetriever
  Get: =>
    @deferred = q.defer()
    randomPageNumber = RandomNumberGenerator.GetInt(1, 50)
    imagesUrl = "#{Config.urls.getImages}#{randomPageNumber}"
    ImageParserFromHtml.GetImageUrls(imagesUrl).then @onImages, @onImagesFail
    return @deferred.promise

  onImages: (imageUrls) =>
    console.log 'got image urls'
    randomImageIndex = RandomNumberGenerator.GetInt(0, imageUrls.length - 1)
    @deferred.resolve imageUrls[randomImageIndex]

  onImagesFail: ->
    console.log 'failed to get image'
    @deferred.reject()

module.exports = new RandomImageRetriever()
