# grunt-remarkable

This plugin compiles markdown files into html using [remarkable](https://github.com/jonschlinkert/remarkable).

## Options

This plugin uses the standard [remarkable options](https://github.com/jonschlinkert/remarkable#options)


## Examples

```js
grunt.initConfig({                                                                                                    
    remarkable: {                                                                                                 
        dist: {                                                                                                     
            files: [                                                                                                  
              expand: true,                                                                                          
              src: 'markdown/*.md',                                                                                   
              dest: 'views/',                                                                                         
              ext: '.html'                                                                                            
            ]     
        },                                                                                                    
        options: {                                                                                                      
            linkify: true     
        }
    }
});
```
