module ReportsKits
  class Engine < ::Rails::Engine
    engine_name 'reports_kits'

    initializer 'reports_kits.helpers.helper' do
      ActiveSupport.on_load(:action_view) do
        include Helper
      end
    end

    initializer 'reports_kits.assets.precompile' do |app|
      if app.config.respond_to?(:assets)
        if defined?(Sprockets) && Gem::Version.new(Sprockets::VERSION) >= Gem::Version.new('4.0.0.beta1')
          app.config.assets.precompile += %w(reports_kits.js reports_kits.css)
        else
          app.config.assets.precompile << proc { |path| path.start_with?('reports_kits.') }
        end
      end
    end
  end
end
