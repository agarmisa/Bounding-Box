
require_relative 'bounding_box.rb'
class BoundingArea

  def initialize(bounding_boxes)
    @bounding_boxes = bounding_boxes
  end

  def boxes_contain_point?(x, y)
    @bounding_boxes.each do |box|
      if box.contains_point?(x, y)
      return true
      end
    end
    false
  end

end
