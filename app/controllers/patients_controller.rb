class PatientsController < ApplicationController

  def index
    @patients = Patient.all
    @patients.sort_by! {|p| p.last_name}
  end

  # GET /patients/1
  # GET /patients/1.json
  def show
    @patients = Patient.all
    @patients.sort_by! {|p| p.last_name}
    @bmis = Observation.sorted_bmi(params[:id])
  end

end
