class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def date_time
    d = self.appointment_datetime
    time = d.strftime("%B") + " #{d.day}, #{d.year} at #{d.hour}:#{d.min}"
  end
end
