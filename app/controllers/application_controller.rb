class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :signup_first

  private

  def signup_first
    if User.count < 1 && request.path != signup_path
      flash[:failure] = 'You must sign up before first before your website is accesible to the public.'
      redirect_to signup_path
    end
  end

  # Not authenticated with Sorcery
  def not_authenticated
    flash[:failure] = 'To access this page, you must first log in.'
    redirect_to login_url
  end

	# Request json via http
	def json_api_pull(url)
    begin
      JSON.parse HTTParty.get(url).response.body
    rescue
      nil
    end
  end

  helper_method :json_api_pull
end
