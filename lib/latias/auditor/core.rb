module Latias
  module Auditor
    module Core
      private

      ##
      # Audit Log with actor, tagged and message
      #
      # == Parameters
      # actor:: 
      #   Actor
      # tagged:: 
      #   Tagged with names
      # message:: 
      #   Message
      #
      def with_audit(actor, tagged, message = nil)
        raise ArgumentError if actor.nil?

        message = yield if block_given?

        tagged = tagged.map(&:upcase).join(",") if tagged.is_a? Array

        persist_audit(actor, tagged, message)
      end

      def with_simple_audit(actor, message = nil)
        with_audit(actor, "default") do
          message || yield
        end
      end

      def persist_audit(actor, tagged, message)
        if defined?(Latias::Auditor::AuditLogJob) && Latias::Auditor.configuration.async
          Latias::Auditor::AuditLogJob.perform_later(actor, tagged, message) 
        else
          Audit.create!(actor: actor, tagged: tagged, message: message)
        end
      end
    end
  end
end

module Kernel
  include Latias::Auditor::Core
end
