class CreateCalls < ActiveRecord::Migration
  def change
    create_table :calls do |t|
    	t.datetime :date
    	t.datetime :time
    	t.string :notes
    	t.references :contact, index: true
      t.timestamps null: false
    end
  end
end

