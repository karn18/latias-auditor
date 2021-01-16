module Auditor
  class InstallGenerator < Rails::Generators::Base
    include Rails::Generators::Migration

    source_root File.expand_path('templates', __dir__)

    # Implement: File activerecord/lib/active_record/migration.rb, line 954
    def self.next_migration_number(number)
      Time.now.utc.strftime("%Y%m%d%H%M%S")
    end

    def copy_migration_file
      migration_template "migration.rb", "db/migrate/create_audits.rb"
    end

    def copy_initializer_file
      copy_file "initializer.rb", "config/initializers/auditor.rb"
    end
  end
end
