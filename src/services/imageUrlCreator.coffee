Config = require '../common/config'

class ImageUrlCreator
  CreateFromArray: (images) ->
    aUrls = []
    for image in images
      imageId = image.attribs.id.split('-')[1]
      fullImageUrl = "#{Config.urls.getFullImage}#{imageId}.jpg"
      aUrls.push(fullImageUrl)
    return aUrls

module.exports = new ImageUrlCreator()
