module Dangerless
  def Dangerless.included(parent)
    parent.instance_methods.each do |method|
      method = method.to_s
      if method.end_with? '!'
        define_method :"#{method.chomp('!')}" do |*params|
          copy = self.clone
          copy.send(method, *params)
          copy
        end
      end
    end
  end
end
