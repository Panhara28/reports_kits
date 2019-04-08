module ReportsKits
  module Reports
    class AbstractSeries
      def value_format_method
        ReportsKits.configuration.custom_method(properties[:value_format_method])
      end
    end
  end
end
