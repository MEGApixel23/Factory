module Factory
  class Factory
    def self.new(*variables_names, &block)
      obj = Class.new do

        define_method :initialize do |*fields|
          variables_names.each_with_index do |variable_name, index|
            instance_variable_set(:"@#{variable_name}", fields[index])
          end
        end

        variables_names.each { |var_name| attr_reader var_name}

        if block_given?
          class_eval(&block)
        end

        def [](index)
          if index.instance_of? Fixnum
            instance_variable_get(instance_variables[index])
          else
            self.send(index)
          end
        end
      end

      obj
    end
  end
end