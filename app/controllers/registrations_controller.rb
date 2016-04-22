class RegistrationsController < Devise::RegistrationsController

  def create
    build_resource(sign_up_params)
  end
end