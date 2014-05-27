class CreateHomeStatements < ActiveRecord::Migration
  def change
    create_table :home_statements do |t|
      t.string  :phrase
    end
  end
end
