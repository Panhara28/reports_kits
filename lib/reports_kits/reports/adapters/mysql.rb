module ReportsKits
  module Reports
    module Adapters
      class Mysql
        def self.truncate_to_day(column)
          "DATE(#{column})"
        end

        def self.truncate_to_week(column)
          case ReportsKits.configuration.first_day_of_week
          when :sunday
            "DATE_SUB(DATE(#{column}), INTERVAL DAYOFWEEK(#{column}) - 1 DAY)"
          when :monday
            "DATE_SUB(DATE(#{column}), INTERVAL DAYOFWEEK(#{column}) - 2 DAY)"
          else
            raise ArgumentError.new("Unsupported first_day_of_week: #{ReportsKits.configuration.first_day_of_week}")
          end
        end

        def self.truncate_to_month(column)
          "DATE_SUB(DATE(#{column}), INTERVAL DAY(#{column}) - 1 DAY)"
        end
      end
    end
  end
end
