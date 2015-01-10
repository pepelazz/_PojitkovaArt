$ ->
  arrangePictures=(->

    areaWidthFunc =-> return $(window).width() - window.innerHeight*264/420
    areaWidth = areaWidthFunc()
    columnNums = switch
      when areaWidth >= 750 && areaWidth < 1000 then 3
      when areaWidth >= 500 && areaWidth <750 then 2
      when areaWidth < 500 then 1
      else 4

    maxY = 0

    $('.gallery-grid > li').each((index, el)->
      picWidth = areaWidth/columnNums - columnNums*10
      row = Math.floor index/columnNums
      col = index - row*columnNums
      if(index > columnNums - 1)
        upperEl = $('.gallery-grid > li').eq(index - columnNums)
        upperElBottom = upperEl.position().top + upperEl.height()
      else
        upperElBottom = -20
      $(el).width(picWidth).css('left', (picWidth + 20)*col).css('top', upperElBottom + 20)
      maxY = Math.max(maxY, $(el).position().top + $(el).height())

      return)
    $('.gallery-grid').css('height', maxY)
    return)

  imgLoad = imagesLoaded($('.gallery-grid'))
  imgLoad.on 'always', -> arrangePictures()   # wait images loaded

  $(window).on 'resize', (->
    arrangePictures()
    return)