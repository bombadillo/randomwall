class RandomNumberGenerator
  GetInt: (from, to) ->
    Math.floor(Math.random() * to) + from

module.exports = new RandomNumberGenerator()
