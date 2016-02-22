Config = require '../common/config'
RandomImageRetriever = require './randomImageRetriever'
WallpaperSaver = require './wallpaperSaver'

class RandomWallpaperSetter
  SetRandomWallpaper: ->
    randomImage = RandomImageRetriever.Get().then @onImage, @onImageFail

  onImage: (image) ->
    console.log image
    WallpaperSaver.save(image)

  onImageFail: ->
    console.log 'fail to get random image'

module.exports = new RandomWallpaperSetter()
