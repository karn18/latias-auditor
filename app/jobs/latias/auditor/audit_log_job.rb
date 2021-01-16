module Latias
  module Auditor
    class AuditLogJob < ApplicationJob
      queue_as :default

      def perform(actor, tagged, message)
        Audit.create!(actor: actor, tagged: tagged, message: message)
      end
    end
  end
end
