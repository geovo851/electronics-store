class MessagesController < ApplicationController
  include CurrentCart
  before_action :set_cart

  def create
    @message = Message.new(message_params)

    if @message.save
      flash[:success] = "Your message sent."
      redirect_to store_contact_us_path
    else
      @categories = Category.where(category_id: nil)
      render 'store/contact_us'
    end
  end

  private
    def message_params
      params.require(:message).permit(:name, :email, :subject, :message)
    end
end
