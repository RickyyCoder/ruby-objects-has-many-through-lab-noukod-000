class Doctor
  @@all = []
  attr_accessor :name, :appointment, :patient
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  
  
  def appointments
    Appointment.all.select{ |each_app| each_app.doctor == self }
  end
  
  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end

  
  def self.all
    @@all
  end
  
  def patients
    Appointment.all.collect { |each_app| each_app.patient }
  end
  
end