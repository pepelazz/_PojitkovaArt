module = angular.module 'app', []


module.controller 'main',
  ['$rootScope', '$scope','$http', '$location', '$timeout', '$log'
   (($rootScope, $scope, $http, $location, $timeout, $log) ->


     return)]

module.controller 'gallery',
  ['$rootScope', '$scope'
   (($rootScope, $scope) ->
     pictures =[]
     window.picturesArray.forEach (item)->
       pictures.push
        src: './images/pictures/' + item.fileName + ".jpg"
        w: item.size[0]
        h: item.size[1]

     openPhotoSwipe =((index)->
       pswpElement = document.querySelectorAll('.pswp')[0]
       options =
         index: index
         history: false,
         focus: false,
         showAnimationDuration: 0,
         hideAnimationDuration: 0
       gallery = new PhotoSwipe( pswpElement, PhotoSwipeUI_Default, pictures, options)
       gallery.init()
       return)


     $scope.openPic =((index)->
       openPhotoSwipe(index)

       return)





     return)]

#
#openPhotoSwipe =(->
#  pswpElement = document.querySelectorAll('.pswp')[0]
#  items = [
#    src: './images/pictures/pic01.jpg'
#    w: 1000
#    h: 751
#  ,
#    src: './images/pictures/pic02.jpg'
#    w: 1000
#    h: 756
#  ,
#    src: './images/pictures/pic03.jpg'
#    w: 1000
#    h: 698
#  ]
#
#  options =
#    history: false,
#    focus: false,
#    showAnimationDuration: 0,
#    hideAnimationDuration: 0
#
#  gallery = new PhotoSwipe( pswpElement, PhotoSwipeUI_Default, items, options)
#  gallery.init()
#  return)
#
#openPhotoSwipe()






