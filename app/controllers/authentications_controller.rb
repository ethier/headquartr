class AuthenticationsController < ApplicationController

    def index
      @authentications = current_user.authentications if current_user
    end

    def create
      auth = request.env["rack.auth"]
      current_user.authentications.find_or_create_by_provider_and_uid(auth['provider'], auth['uid'])
      flash[:notice] = "Authentication successful."
      redirect_to authentications_url
    end

    def destroy
      @authentication = current_user.authentications.find(params[:id])
      @authentication.destroy
      flash[:notice] = "Successfully destroyed authentication."
      redirect_to authentications_url
    end

    protected

    # This is necessary since Rails 3.0.4
    # See https://github.com/intridea/omniauth/issues/185
    # and http://www.arailsdemo.com/posts/44
    def handle_unverified_request
      true
    end

end
