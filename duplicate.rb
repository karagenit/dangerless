module Duplicate
  def Duplicate.included(parent)
    parent.instance_methods.each do |method|
      method = method.to_s
      if method.end_with? '!'
        define_method :"#{method.chomp('!')}" do |*params|
          self.clone.send(method, *params)
        end
      end
    end
  end
end
