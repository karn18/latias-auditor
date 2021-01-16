class CreateAudits < ActiveRecord::Migration[6.1]
  def change
    create_table :audits do |t|
      t.string :actor
      t.string :tagged
      t.text :message

      t.timestamps
    end
  end
end
