module Latias
  module Auditor
    class Configuration
      attr_accessor :async

      def initialize
        @async = true
      end
    end

    # Borrow syntax from Clearance: https://github.com/thoughtbot/clearance/blob/master/lib/clearance/configuration.rb
    def self.configuration
      @configuration ||= Configuration.new
    end

    def self.configuration=(config)
      @configuration = config
    end

    def self.configure
      yield configuration
    end
  end
end
