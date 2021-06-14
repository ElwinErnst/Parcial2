class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.date :guard_date
      t.references :worker, null: false, foreign_key: true
      t.references :medicalcenter, null: false, foreign_key: true

      t.timestamps
    end
  end
end
