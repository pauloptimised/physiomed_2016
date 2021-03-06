class PracticeApplicationsController < ApplicationController
  def new
    @practice_application = PracticeApplication.new
  end

  def create
    @practice_application = PracticeApplication.new(practice_application_params)
    if @practice_application.save
      PracticeApplicationFormCreator.new(@practice_application.practice).call
      redirect_to thank_you_practice_applications_path
    else
      render :new
    end
  end

  def thank_you
  end

  private

  def practice_application_params
    params.require(:practice_application).permit(
      :name, :address, :county, :postcode, :telephone, :fax, :email,
      :first_contact_name, :first_contact_position, :second_contact_name,
      :second_contact_position, :public_liability_insurance,
      :employee_liability_insurance, :monday, :tuesday, :wednesday, :thursday,
      :friday, :saturday, :sunday, :capacity, :receptionist, :parking_facilities, :established,
      :cancellation_policy, :description, :treatment_rooms, :manual_therapy,
      :tm2_or_pps, :online_booking, :initial_assessment_duration,
      :subsequent_treatment_duration, :initial_assessment_cost,
      :subsequent_treatment_cost, :terms_and_conditions, :disabled_access,
      :bupa_registered, :domiciliary_visits, :employee_liability_expiry_date,
      :public_liability_expiry_date,
      practitioners_attributes: [:name, :qualification_date, :years_practicing]
    )
  end
end
