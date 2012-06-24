class OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def self.provides_callback_for(*providers)
    providers.each do |provider|
      class_eval %Q{
        def #{provider}

          if request.env["omniauth.error"].present?
            flash[:error] = t("devise.omniauth_callbacks.failure", :kind => auth_hash['provider'], :reason => t(:user_was_not_valid))
            redirect_back_or_default(root_url)
            return
          end

          authentication = Authentication.find_by_provider_and_uid(auth_hash['provider'], auth_hash['uid'])

          if authentication.present?
            flash[:notice] = "Signed in successfully"
            sign_in_and_redirect :user, authentication.user
          elsif current_user
            current_user.user_authentications.create!(:provider => auth_hash['provider'], :uid => auth_hash['uid'])
            flash[:notice] = "Authentication successful."
            redirect_back_or_default(account_url)
          else
            user = User.find_by_email(auth_hash['info']['email']) || User.new
            user.apply_omniauth(auth_hash)
            if user.save
              flash[:notice] = "Signed in successfully."
              sign_in_and_redirect :user, user
            else
              session[:omniauth] = auth_hash.except('extra')
              flash[:notice] = t(:one_more_step, :kind => auth_hash['provider'].capitalize)
              redirect_to new_user_registration_url
            end
          end
        end
      }
    end
  end

  provides_callback_for :github, :twitter, :facebook, :google_apps

  def failure
    set_flash_message :alert, :failure, :kind => failed_strategy.name.to_s.humanize, :reason => failure_message
    redirect_to new_user_session_path
  end

  def passthru
    render :file => "#{Rails.root}/public/404", :formats => [:html], :status => 404, :layout => false
  end

  def auth_hash
    request.env["omniauth.auth"]
  end
end