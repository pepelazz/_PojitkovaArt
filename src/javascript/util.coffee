$ ->
  # resize left side picture
  fixSize()
  $(window).on 'resize', (->
    fixSize()
    return)

fixSize=(->
  wh = window.innerHeight
  sidebarWidth = wh*264/420
  $('.img-interior').css(height: wh)
  $('.main-area').css('margin-left': sidebarWidth + 'px')
  $('.nav').css(left: sidebarWidth)
  calcWidthOrHeight()
  return)

calcWidthOrHeight =(->
  heightFunc =-> window.innerHeight
  widthFunc =-> window.innerWidth - height*264/420

  height = heightFunc()
  width = widthFunc()
  if(height >= width)
    $('.img-painter').css(width: width).css(height: 'auto').css(marginTop: height - width)

  else
    $('.img-painter').css(height: height).css(width: 'auto')
  return)

