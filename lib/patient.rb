class Patient
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  

  
 def doctors
    Appointment.all.map do |appointment|
      appointment.doctor
    end
  end
  
  def new_appointment(doctor, date)
   new_app = Appointment.new(self, doctor, date)
  end
  
  def appointments
    Appointment.all.collect { |each_app| each_app.patient == self }
  end
  
  
  
end