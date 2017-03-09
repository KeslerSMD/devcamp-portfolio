module CurrentUser
  extend ActiveSupport::Concern

  def current_user
    super || guest_user
  end

  def guest_user
  guest = GuestUser.new
    guest.name = "Guest User"
    guest.first_name = "Guest"
    guest.Last_name = "User"
    guest.email = "guest@example.com"
    guest
  end
end