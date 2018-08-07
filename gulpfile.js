// Подключаем Gulp и все необходимые библиотеки
var gulp           = require('gulp'),
	gutil          = require('gulp-util' ),
	sass           = require('gulp-sass'),
	browserSync    = require('browser-sync'),
	cleanCSS       = require('gulp-clean-css'),
	autoprefixer   = require('gulp-autoprefixer'),
	bourbon        = require('node-bourbon'),
	ftp            = require('vinyl-ftp');

// Обновление страниц сайта на локальном сервере
gulp.task('browser-sync', function() {
	browserSync({
		proxy: "modenamoda",
		notify: false
	});
});

// Компиляция stylesheet.css
gulp.task('sass', function() {
	return gulp.src('catalog/view/theme/modenamoda/stylesheet/stylesheet.sass')
		.pipe(sass({
			includePaths: bourbon.includePaths
		}).on('error', sass.logError))
		.pipe(autoprefixer(['last 15 versions']))
		.pipe(cleanCSS())
		.pipe(gulp.dest('catalog/view/theme/modenamoda/stylesheet/'))
		.pipe(browserSync.reload({stream: true}))
});

// Наблюдение за файлами
gulp.task('watch', ['sass', 'browser-sync'], function() {
	gulp.watch('catalog/view/theme/modenamoda/stylesheet/stylesheet.sass', ['sass']);
	gulp.watch('catalog/view/theme/modenamoda/template/**/*.twig', browserSync.reload);
	gulp.watch('catalog/view/theme/modenamoda/js/**/*.js', browserSync.reload);
	gulp.watch('catalog/view/theme/modenamoda/libs/**/*', browserSync.reload);
});

// Выгрузка изменений на хостинг
gulp.task('deploy', function() {
	var conn = ftp.create({
		host:      'caritas.timeweb.ru',
		user:      'cx92525_a1',
		password:  'SyNfTh6e',
		parallel:  10,
		log: gutil.log
	});
	var globs = [
	'catalog/view/theme/modenamoda/**'
	];
	return gulp.src(globs, {buffer: false})
	.pipe(conn.dest('/example2/public_html/catalog/view/theme/modenamoda/'));
});

gulp.task('default', ['watch']);
