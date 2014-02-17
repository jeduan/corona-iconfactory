androidSizes     = ['36x36', '48x48', '72x72', '96x96', '144x144']
androidFilenames = ['icons/Icon-ldpi.png', 'icons/Icon-mdpi.png',
'icons/Icon-hdpi.png', 'icons/Icon-xhdpi.png', 'icons/Icon-xxhdpi.png']
iosSizes         = ['57x57', '114x114', '72x72', '144x144', '60x60', '120x120',
'76x76', '152x152']
iosFilenames     = ['icons/Icon.png', 'icons/Icon@2x.png', 'icons/Icon-72.png',
'icons/Icon-72@2x.png', 'icons/Icon-60.png', 'icons/Icon-60@2x.png',
'icons/Icon-76.png', 'icons/Icon-76@2x.png']

module.exports = (grunt) ->
  grunt.initConfig
    multiresize:
      iOS:
        src: 'orig/Icon-1024.png'
        dest: iosFilenames
        destSizes: iosSizes
      Android:
        src: 'orig/Icon-Android-512.png',
        dest: androidFilenames,
        destSizes: androidSizes
      All:
        src: 'orig/Icon.png'
        dest: iosFilenames.concat(androidFilenames)
        destSizes: iosSizes.concat(androidSizes)

  grunt.loadNpmTasks 'grunt-multiresize'

  grunt.registerTask 'default', ['multiresize:iOS', 'multiresize:Android']
