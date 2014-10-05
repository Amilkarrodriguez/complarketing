class CreateCampaings < ActiveRecord::Migration
  def change
    create_table :campaings do |t|
      t.string :campaingName
      t.string :campaingCode
      t.boolean :status

      t.timestamps
    end
  end
end
