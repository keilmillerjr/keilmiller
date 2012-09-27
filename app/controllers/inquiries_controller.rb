class InquiriesController < ApplicationController
  def new
  	@inquiry = Inquiry.new
  end

  def create
		@inquiry = Inquiry.new(params[:inquiry])

  	if @inquiry.valid?
			# send inquiry email
			ClientMailer.inquiry_email(@inquiry).deliver

			# redirect to root url
			redirect_to contact_path, notice: 'Your message was sent.'
		else
			# render new action
      render action: "new"
    end
  end
end
