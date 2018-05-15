##
# Adds Safe Cloning Methods Automatically from Existing Dangerous ! Methods
#
module Dangerless
  def self.included(parent)
    parent.instance_methods.each do |method|
      method = method.to_s
      next unless method.end_with? '!'
      define_method :"#{method.chomp('!')}" do |*params|
        copy = clone
        copy.send(method, *params)
        copy
      end
    end
  end
end
