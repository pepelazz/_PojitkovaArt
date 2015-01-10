gulp = require("gulp")
config = require("../config").copyLibs

gulp.task "copyLibs", [], (->
  gulp.src("#{config.libs}/normalize/**").pipe(gulp.dest(config.dest + '/lib'));
  gulp.src("#{config.libs}/photoSwipe/**").pipe(gulp.dest(config.dest + '/lib/photoSwipe'));
  gulp.src("#{config.libs}/imagesLoaded/**").pipe(gulp.dest(config.dest + '/lib/imagesLoaded'));
  return)