class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
    	t.string :date 
    	t.string :time 
    	t.string :notes
    	t.references :contact, index: true
      t.timestamps null: false
    end
  end
end
