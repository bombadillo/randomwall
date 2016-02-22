FileDownloader = require './fileDownloader'
FileNameGenerator = require './fileNameGenerator'
Config = require '../common/config'

class WallpaperSaver
  save: (imageUrl) ->
    console.log 'test'
    fileName = FileNameGenerator.generate('.jpg')
    downloadFilePath = "#{Config.wallpaperDownloadDir}#{fileName}"
    console.log(downloadFilePath)
    FileDownloader.download(imageUrl, downloadFilePath)

module.exports = new WallpaperSaver()
