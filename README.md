# blurred\_image\_tag

Place an image into a fixed width/heigth box without being stretching in your Rails application, adjusting automatically no matter if it is landscape or portrait. Plus, add a blurred background of the same image to fill the box.

Great for fixed width/heigth `<div>` that may contain different image sizes and aspect ratios.

<img style="display: block; margin: 0 auto" src="http://alexeguia.net/wp-content/uploads/2015/07/blurred_logos.png" alt="Blurred logos example">

## Installation

Add this line to your application's `Gemfile`

```ruby
gem 'blurred_image_tag'
```

and run

```ruby
bundle install
```

In your `application.css`, include the CSS file:

```css
/*
 *= require blurred_image_tag
 */
```

Then restart your webserver if it was previously running.

## Usage

### Helper

You can use the helper `blurred_image_tag` just as the `image_tag` helper in Rails:

```ruby
blurred_image_tag source, options = {}
```

* The `source` parameter takes the image src (in your assets pipeline or wherever it is placed).
* The `options` hash accepts the same HTML attributes as `image_tag`.
  * Passing a `width` attribute will set the box's width (in any CSS units). Defaults to 100%.
  * Passing a `heigth` attribute will set the box'x heigth (in any CSS units). Defaults to 100%.
  * Any other atributes used by gems like lazy_load will keep working.

### Examples

```ruby
blurred_image_tag 'avatar.png'
# => Creates a div with width: 100%, heigth: 100%

blurred_image_tag 'avatar.png', width: '200px'
# => Creates a div with width: 200px, heigth: 100%

blurred_image_tag 'avatar.png', width: '480px', heigth: '360px'
# => Creates a div with width: 480px, heigth: 360px
```

### Output

The HTML output will be as follows:

```html
<div class="blurred-image-wrapper">
  <img class="blurred" src="...">
  <img class="original" src="...">
</div>
```

Any classes added via `blurred_image_tag` helper will be added to the image tags, but no to the parent div.

If you want to override the CSS properties added by this gem, you can do it calling the CSS selector `.blurred-image-wrapper` (and children) in your own CSS files.

### Just CSS!

Every positioning, blurring and scaling is done purely by CSS. No, no, JS is no here.

## Contributing

1. Fork it https://github.com/KRaikk/blurred_image_tag/fork
2. Create your feature branch `git checkout -b my-new-feature`
3. Commit your changes `git commit -am 'Add some feature'`
4. Push to the branch `git push origin my-new-feature`
5. Create a new Pull Request https://github.com/KRaikk/blurred_image_tag/pulls
