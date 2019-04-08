module ReportsKits
  module Reports
    class Properties
      def self.generate(context)
        properties = context.instance_eval(&ReportsKits.configuration.properties_method)
        properties.deep_symbolize_keys
      end
    end
  end
end
