gulp = require("gulp")
config = require("../config").copyLibs

gulp.task "copyLibs", [], (->
  gulp.src("#{config.libs}/jasmine-2.1.3/**")
    .pipe(gulp.dest(config.dest + '/jasmine'));
  return)