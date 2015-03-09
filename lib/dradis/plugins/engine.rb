module Dradis
  module Plugins
    class Engine < ::Rails::Engine
      isolate_namespace Dradis::Plugins

      # initializer 'frontend.append_migrations' do |app|
      #   unless app.root.to_s == root.to_s
      #     config.paths["db/migrate"].expanded.each do |path|
      #       app.config.paths["db/migrate"].push(path)
      #     end
      #   end
      # end

      # initializer 'frontend.asset_precompile_paths' do |app|
      #   app.config.assets.precompile += ["dradis/frontend/manifests/*"]
      # end

      Dradis::Plugins::setup do |config|
        config.configuration_class = 'Dradis::Core::Configuration'
        config.base_export_controller_class = 'Dradis::Frontend::AuthenticatedController'
      end
    end
  end
end
