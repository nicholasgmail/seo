//подключаем модули галпа
const gulp = require('gulp');
const browserSync = require('browser-sync').create();
const plugins = require('gulp-load-plugins');
const autoprefixer = require('autoprefixer');
const postcssPresetEnv = require('postcss-preset-env');
const del = require('del');
const fs = require('fs');
const yaml = require('js-yaml');
const yargs = require('yargs');
const named = require('vinyl-named');
const webpackStream = require('webpack-stream');
const webpack = require('webpack');
const imageminJpegRecompress = require('imagemin-jpeg-recompress');
const pngquant = require('imagemin-pngquant');
const panini = require('panini');
const Fiber = require('fibers');
const tildeImporter = require('node-sass-tilde-importer');

//релоадер browserSync
async function rel(){
    try{
    const reload = browserSync.reload;
    return reload
} 
catch (error) {
    throw new Error(`Unable to get currency PRODUCTS`);
  }
}


//плагины gulp подключение $
const $ = plugins();

//компилятор node-sass
$.sass.compiler = require('node-sass');


//подключение чтение config.yml
const {COMPATIBILITY, PORT, PATHS} = loadConfig();

function loadConfig() {
    let ymlFile = fs.readFileSync('config.yml', 'utf8');
    return yaml.load(ymlFile);
}

//проверка флага --production
const PRODUCTION = !!(yargs.argv.production);

//подключение рабочих файлов
const htmlFiles = PATHS.html;
const scssFiles = PATHS.styles;
const jsFiles = PATHS.entrance;
const imgFiles = PATHS.img;
const fontsFiles = PATHS.fonts;

//страницы HTML
async function pages() {
    try{
    return await gulp.src('src/pages/**/*.{html,hbs,handlebars}')
        .pipe(panini({
            root: 'src/pages/',
            layouts: 'src/layouts/',
            partials: 'src/partials/',
            data: 'src/data/',
            helpers: 'src/helpers/'
        }))
        .pipe(gulp.dest(PATHS.dist))
    } 
    catch (error) {
        throw new Error(`Unable to get currency PRODUCTS`);
      }
}

function resetPages(done) {
    panini.refresh();
    done();
}

//стили CSS
async function styles() {
    try{
    const css = await gulp.src(scssFiles)
    // .pipe($.sourcemaps.init())
        .pipe($.if(PRODUCTION, $.sass.sync({
            data: ({indentedSyntax: true}),
            outputStyle: 'compressed',
            importer: tildeImporter,
            sourceComments: true, //коменты
            fiber: Fiber
        }))
            .on('error', $.sass.logError))
        .pipe($.if(!PRODUCTION, $.sass.sync({
            data: ({indentedSyntax: true}),
            outputStyle: 'expanded',
            importer: tildeImporter,
            sourceMap: true,
            sourceMapContents: false,
            embedSourceMap: true,
            sourceComments: true, //коменты
            fiber: Fiber
        }))
            .on('error', $.sass.logError))
        .pipe($.base64Inline())
        /*  .pipe($.concat('app.css'))*/
        .pipe($.postcss([
            postcssPresetEnv({
                stage: 2,
                browsers: COMPATIBILITY,
                autoprefixer: {grid: true, cascade: false},
                features: {'nesting-rules': true}
            })
        ]))

        .pipe($.if(!PRODUCTION, $.cleanCss({
            format: 'beautify',
            level: {
                1: {
                    all: true,
                    roundingPrecision: 'all=3,px=2'
                }
            }
        })))
        .pipe($.if(PRODUCTION, $.cleanCss({
            compatibility: '*',
            level: {
                1: {
                    all: false,
                    roundingPrecision: 'all=3,px=2'
                },
               /* 2: {
                    all: true
                }*/
            }
        })))
        //.pipe($.if(!PRODUCTION, $.sourcemaps.write()))
        //.pipe($.if(PRODUCTION, $.rename({suffix: '.min'})))
        .pipe(gulp.dest(PATHS.build + 'css'))
        .pipe(browserSync.stream())
    return css
} 
catch (error) {
    throw new Error(`Unable to get currency PRODUCTS`);
  }
}

//конфигурацыя webpack
let webpackConfig = {
    mode: (PRODUCTION ? 'production' : 'development'),
    module: {
        rules: [
            {
                test: /\.js$/,
                exclude: /(node_modules)/,
                use: {
                    loader: 'babel-loader',
                    options: {
                        presets: ["@babel/preset-env"],
                        compact: false
                    }

                }
            }
        ]
    },
    devtool: !PRODUCTION && 'source-map'
}

//скрипты JS
function scripts() {
    const js = gulp.src(jsFiles)
        .pipe(named())
        .pipe($.sourcemaps.init())
        .pipe(webpackStream(webpackConfig, webpack))
        .pipe($.if(PRODUCTION, $.uglify({toplevel: true})
            .on('error', e => {
                console.log(e);
            })
        ))
        .pipe($.if(!PRODUCTION, $.sourcemaps.write()
            .on('error', e => {
                console.log(e);
            })
        ))
        //.pipe($.if(PRODUCTION, $.rename({suffix: '.min'})))
        .pipe(gulp.dest(PATHS.build + 'js'))
        .pipe(browserSync.stream())
    return js;
}


//обработка изображения
async function images() {
    try{
    const imgmin = await gulp.src(imgFiles)
        .pipe($.if(PRODUCTION, $.imagemin([
                $.imagemin.gifsicle({interlaced: true}),
                $.imagemin.jpegtran({progressive: true}),
                imageminJpegRecompress({
                    loops: 5,
                    min: 60,
                    max: 65,
                    quality: 'medium'
                }),
                $.imagemin.optipng({optimizationLevel: 2}),
                $.imagemin.svgo({
                    plugins: [
                        {removeViewBox: true},
                        {cleanupIDs: false},
                        pngquant({quality: '5-10', speed: 5})
                    ]
                }),
            ], {
                verbose: true
            }))
        )
        .pipe(gulp.dest(PATHS.build + 'img'))
        .pipe(browserSync.stream())
    return imgmin
} 
catch (error) {
    throw new Error(`Unable to get currency PRODUCTS`);
  }
}

//обработка шрифтов
async function fonts() {
    try{
    const fonts = await gulp.src(fontsFiles)
        .pipe(gulp.dest(PATHS.build + 'fonts'))
        .pipe(browserSync.stream())
    return fonts
} 
catch (error) {
    throw new Error(`Unable to get currency PRODUCTS`);
  }
}

//очистка
async function clean() {
    try{
    const cleanimg = await del(['build/*'])
    return cleanimg
} 
catch (error) {
    throw new Error(`Unable to get currency PRODUCTS`);
  }
}

//запуск сервера
async function server(done) {
    try{
    const browser = await browserSync.init({
        server: PATHS.dist,
        port: PORT
    }, done);
    return browser
} 
catch (error) {
    throw new Error(`Unable to get currency PRODUCTS`);
  }
}

//наблюдение
async function watch() {
    try{
    await gulp.watch('src/pages/**/*.html').on('all', gulp.series(pages, rel));
    await gulp.watch(htmlFiles).on('all', gulp.series(resetPages, pages, rel));
    await gulp.watch(scssFiles).on('all', gulp.series(styles, rel));
    await gulp.watch(jsFiles).on('all', gulp.series(scripts, rel));
    await gulp.watch(imgFiles).on('all', gulp.series(images, rel));
    await gulp.watch(fontsFiles).on('all', gulp.series(fonts, rel));
    //gulp.watch('build/*.html').on("change", reload);
    }catch (error) {
    throw new Error(`Unable to get currency PRODUCTS`);
  }
}
//очистка css
function purgecss() {
    return gulp.src('build/assets/css/bootstrap.css')
        .pipe($.purgecss({
            content: ['build/*.html']
        }))
        .pipe(gulp.dest('build/assets/cssmin'))
}

//таска html
gulp.task('pages', pages);

//таска css
gulp.task('styles', styles);

//таска js
gulp.task('scripts', scripts);

//таска img
gulp.task('images', images);

//таска fonts
gulp.task('fonts', fonts);

//таска clean
gulp.task('clean', clean);

//таск server
gulp.task('server', server);

//таск watch
gulp.task('watch', watch);

gulp.task('purgecss', purgecss)

//таск build
gulp.task('build', gulp.series(clean, gulp.parallel( pages, scripts, styles, fonts, ), images, purgecss));
gulp.task('dev', gulp.series('build', 'server', 'watch'));

