require 'rails/all'

require 'reports_kits/normalized_params'
require 'reports_kits/base_controller'
require 'reports_kits/cache'
require 'reports_kits/configuration'
require 'reports_kits/engine'
require 'reports_kits/entity'
require 'reports_kits/filters_controller'
require 'reports_kits/form_builder'
require 'reports_kits/helper'
require 'reports_kits/model'
require 'reports_kits/model_configuration'
require 'reports_kits/order'
require 'reports_kits/relative_time'
require 'reports_kits/report_builder'
require 'reports_kits/reports_controller'
require 'reports_kits/utils'
require 'reports_kits/value'
require 'reports_kits/version'

require 'reports_kits/reports/adapters/mysql'
require 'reports_kits/reports/adapters/postgresql'

require 'reports_kits/reports/data/add_table_aggregations'
require 'reports_kits/reports/data/aggregate_composite'
require 'reports_kits/reports/data/aggregate_one_dimension'
require 'reports_kits/reports/data/aggregate_two_dimensions'
require 'reports_kits/reports/data/chart_data_for_data_method'
require 'reports_kits/reports/data/chart_options'
require 'reports_kits/reports/data/format_one_dimension'
require 'reports_kits/reports/data/format_table'
require 'reports_kits/reports/data/format_two_dimensions'
require 'reports_kits/reports/data/generate'
require 'reports_kits/reports/data/generate_for_properties'
require 'reports_kits/reports/data/normalize_properties'
require 'reports_kits/reports/data/populate_one_dimension'
require 'reports_kits/reports/data/populate_two_dimensions'
require 'reports_kits/reports/data/utils'

require 'reports_kits/reports/filter_types/base'
require 'reports_kits/reports/filter_types/boolean'
require 'reports_kits/reports/filter_types/datetime'
require 'reports_kits/reports/filter_types/number'
require 'reports_kits/reports/filter_types/records'
require 'reports_kits/reports/filter_types/string'

require 'reports_kits/reports/abstract_series'
require 'reports_kits/reports/composite_series'
require 'reports_kits/reports/contextual_filter'
require 'reports_kits/reports/dimension'
require 'reports_kits/reports/dimension_with_series'
require 'reports_kits/reports/filter'
require 'reports_kits/reports/filter_with_series'
require 'reports_kits/reports/generate_autocomplete_results'
require 'reports_kits/reports/generate_autocomplete_method_results'
require 'reports_kits/reports/inferrable_configuration'
require 'reports_kits/reports/model_settings'
require 'reports_kits/reports/properties'
require 'reports_kits/reports/properties_to_filter'
require 'reports_kits/reports/series'

module ReportsKits
  def self.configure
    yield(configuration)
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.parse_date_range(string)
    ReportsKits::Reports::Data::Utils.parse_date_range(string)
  end

  def self.format_date_range(string)
    ReportsKits::Reports::Data::Utils.format_date_range(string)
  end
end
