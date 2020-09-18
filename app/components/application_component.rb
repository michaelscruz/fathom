class ApplicationComponent < ViewComponent::Base

  private

    def root_class_name
      [[module_name, component_name].join('--'), [added_class_names].flatten.join(' ')].join(' ').strip
    end

    def added_class_names
      ''
    end

    def module_name
      module_and_class_underscore.split('/')[0..-2].join('--').gsub('_', '-')
    end

    def component_name
      module_and_class_underscore.split('/').last.gsub('_', '-')
    end

    def module_and_class_underscore
      self.class.name.underscore
    end
end
