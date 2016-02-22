

class ImageUrlCreator
  CreateFromArray: (images) ->
    aUrls = []
    for image in images
      imageId = image.attribs.id.split('-')[1]
      fullImageUrl = "http://wallpapers.wallhaven.cc/wallpapers/full/wallhaven-#{imageId}.jpg"
      aUrls.push(fullImageUrl)
    return aUrls

module.exports = new ImageUrlCreator()
