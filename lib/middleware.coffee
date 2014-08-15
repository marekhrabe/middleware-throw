module.exports = (layer, settings, next) ->
  unless settings.throwAsynchronously
    throw new Error('This is just wrong.')

  setTimeout ->
    throw new Error('But this here is probably more wrong.')
  , if settings.asyncDelay is 'Before timeout' then 500 else 5000
