class AuthenticatedController < ApplicationController
  helper_method :current_user, :current_profile

  def switch_profile
    profile = Profile.find(params[:profile_id])
    if profile
      session[:current_profile_id] = profile.id
      session[:current_user_id] = profile.user_id
      redirect_to root_path, notice: "Perfil cambiado a #{profile.role}"
    else
      redirect_to root_path, alert: "Perfil no encontrado"
    end
  end

  def current_profile
    @current_profile ||= Profile.find_by(id: session[:current_profile_id]) || Profile.coach.first
  end

  def current_user
    @current_user ||= User.find_by(id: session[:current_user_id]) || current_profile&.user
  end
end
