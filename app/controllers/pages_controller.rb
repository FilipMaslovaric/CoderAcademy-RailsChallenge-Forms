class PagesController < ApplicationController

  def home
    @subscriber_count = Subscriber.count
    @subscriber = Subscriber.new
  end

  def subscribe
    @subscriber = Subscriber.new(params.permit(:name, :email))

    respond_to do |format|
      if @subscriber.save
        format.html { redirect_to root_path, notice: 'You are subscribed!' }
      else
        format.html { render :home }
      end
    end
  end
end
