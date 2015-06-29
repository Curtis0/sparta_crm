require 'ransack'

module Ransack::Naming
  def comments
    self.class.comments
  end
end
