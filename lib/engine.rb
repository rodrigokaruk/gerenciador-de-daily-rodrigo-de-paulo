module RailsAddress
  class Engine < ::Rails::Engine
    isolate_namespace RailsAddress

    config.generators do |g| 
      g.template_engine :haml
    end
  end
end