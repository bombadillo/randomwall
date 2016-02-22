RandomNumberGenerator = require './randomNumberGenerator'

class FileNameGenerator
  characters: 'abcdefghijklmnopqrstuvxyz'
  fileNameLength: 10

  generate: (extension) =>
    fileName = ''
    for i in [0..@fileNameLength] by 1
      randomIndex = RandomNumberGenerator.GetInt(0, @characters.length - 1)
      fileName += @characters[randomIndex]
    return "#{fileName}#{extension}"

module.exports = new FileNameGenerator()
