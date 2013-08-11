class CreateSkedls < ActiveRecord::Migration
  def change
    create_table :skedls do |t|
      t.string :description
      t.string :cal_type

      t.timestamps
    end
  end
end
