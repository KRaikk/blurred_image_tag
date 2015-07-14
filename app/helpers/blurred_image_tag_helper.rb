module BlurredImageTagHelper
  def blurred_image_tag(source, options = {})
    # Add internal class names to coming classes
    parent_div_classes   = [options[:class], 'blurred-image-wrapper'].join(' ')
    original_img_classes = [options[:class], 'original'].join(' ')
    blurred_img_classes  = [options[:class], 'blurred'].join(' ')

    # Retrieve width and height of the image, 100% by default
    width  = options[:width].nil? ? '100%' : options[:width]
    height = options[:height].nil? ? '100%' : options[:height]

    # Generate parent div with two images, one blurred and the original non-blurred one on top
    output = '<div class="' + parent_div_classes + '" style="width: ' + width + '; padding-top: ' + height + '">'
    output += image_tag source, options.merge(class: blurred_img_classes).except(:width).except(:height)
    output += image_tag source, options.merge(class: original_img_classes).except(:width).except(:height)
    output += '</div>'
    output.html_safe
  end
end