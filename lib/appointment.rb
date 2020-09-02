class Appointment

  attr_accessor :patient, :doctor
  @@all = []

  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
    patient.appointments << self
    doctor.appointments << self
  end

  def self.all
    @@all
  end

end 