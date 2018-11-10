class Doctor < ActiveRecord::Base

   has_many :appointments
   has_many :patients, through: :appointments



   def get_time
     all_times = []
   @time = self.appointments.select {|s| s.appointment_datetime}.map{|g| g.appointment_datetime}
   @time.each do |t|
     @f = t.to_formatted_s(:long).split(" ")
     all_times << "#{@f[0]} #{@f[1]} #{@f[2]} at #{@f[3]}"
    end
    all_times
   end

end
