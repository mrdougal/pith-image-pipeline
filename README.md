# Pith::Image::Pipeline

Pipeline for resizing images in pith (a static site generator)

**This is a work in progress**


This is similar to piths template compilation except we don't want to change the 
end/final extension of the image. Doing so will (typically) render the image un-viewable by the user and OSX has a habit of giving a nasty warning when changing.

Why not define a template language and have assets passed to pith from there?
The pith pipeline assumes that content is text, passing binary files causes all sort of issues.


## Installation

Add this line to your application's Gemfile:

    gem 'pith-image-pipeline'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pith-image-pipeline

## Usage

Define transformations for the images

    def thumbnail
      resize, crop
    end

  this will trigger "thumbnail" transformation
    logo.thumbnail.png 

  this will pass through un-altered
    logo.png



## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
