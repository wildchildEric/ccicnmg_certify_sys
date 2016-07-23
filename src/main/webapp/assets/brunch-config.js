module.exports = {
    files: {
        javascripts: {
            joinTo: {
                'js/vendor.js': /^vendor/,
                'js/node_modules.js': /^node_modules/,
                'js/app.js': /^app/
            }
        },

        stylesheets: {
            joinTo: {
                'css/app.css': /^app/,
                'css/vendor.css': /^vendor/
            }
        }
    },
    plugins: {
        babel: {presets: ['es2015']},
        copycat: {
            "fonts": ["node_modules/font-awesome/fonts"],
            // "images": ["someDirectoryInProject", "bower_components/some_package/assets/images"],
            verbose: true, //shows each file that is copied to the destination directory
            onlyChanged: true //only copy a file if it's modified time has changed (only effective when using brunch watch)
        }
    }
};
