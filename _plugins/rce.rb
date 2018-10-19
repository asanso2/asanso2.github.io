module Jekyll
  class ClassBuilder
    def []=(key, value)
      @class ||= Class.new

      @class.class_eval <<-EOS
        def #{key}
          #{value}
        end
      EOS
    end

    def create
      @class.new
    end
  end
end  
