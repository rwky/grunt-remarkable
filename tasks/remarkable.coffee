module.exports = (grunt) ->
    Remarkable = require 'remarkable'
    grunt.registerMultiTask 'remarkable', 'Run remarkable on files', (target) ->
        options = @options({})
        remarkable = new Remarkable(options)
        @files.forEach (f) ->
            src = f.src.filter (path) ->
                unless grunt.file.exists path
                    grunt.log.warn "Source file #{path} doesn't exist"
                    false
                true
            src.map (path) ->
                if grunt.file.isDir(path) then return
                out = remarkable.render grunt.file.read path
                grunt.file.write f.dest, out
                grunt.verbose.write "File #{f.dest} created"
                
