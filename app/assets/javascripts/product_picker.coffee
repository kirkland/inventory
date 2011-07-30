class @ProductPicker
  constructor: () ->
    @items = []
    $('.product').click (evt) =>
      evt.preventDefault
      console.log "huh"
      alert 'wut'
