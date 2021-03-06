class NotificationsController < ApplicationController
  def index
    @notifications = current_user.passive_notifications.order(created_at: :DESC)
  end

  def destroy
    @notifications = current_user.passive_notifications.destroy_all
    redirect_to notifications_path
  end
end
