module Latias
  module Auditor
    class Engine < ::Rails::Engine
      isolate_namespace Latias::Auditor
      
      # initializer "configuration" do
      #   puts "initialize configuration"
      #   # config.auditor = Latias::Auditor::Configuration.new
      #   puts 
      # end
      initializer "assets" do
        
      end
    end
  end
end
