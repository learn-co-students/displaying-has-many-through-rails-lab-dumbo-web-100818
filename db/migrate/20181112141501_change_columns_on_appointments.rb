class ChangeColumnsOnAppointments < ActiveRecord::Migration
  def change
    remove_column :appointments, :doctor, :string
    remove_column :appointments, :patient, :string
    add_column :appointments, :doctor_id, :integer
    add_column :appointments, :patient_id, :integer
  end
end
