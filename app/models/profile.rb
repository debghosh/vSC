class Profile
  include Neo4j::ActiveNode

  property :email,                 :type => String
  property :user_id,               :type => String
  property :address_1,             :type => String
  property :city,                  :type => String
  property :state,                 :type => String
  property :zip,                   :type => String
  property :ss_number,             :type => String
  property :dob,                   :type => Date
  property :phone_number,          :type => String
  property :marital_status,        :type => String
  property :marriage_date,         :type => Date
  property :legal_residence_state, :type => String
  property :alien_registration_no, :type => Integer
  property :legal_state,           :type => String
  property :drivers_license_no,    :type => String
  property :drivers_license_state, :type => String
  property :gender,                :type => String


  def self.create_or_update_profile_from_params(profile_params)
    ["action", "controller", "created_at", "updated_at"].each do |key|
      profile_params.delete(key)
    end
    profile = Profile.find_by(user_id: profile_params['user_id'])
    if profile.blank?
      Profile.create!(profile_params)
    else
      profile.update_attributes(profile_params)
    end
  end

end