class Users::SessionsController < Devise::SessionsController
  def guest_sign_in
    user = User.find(1)
    user.update(email: 'guest@example.com', username: 'ゲストユーザー') do |guest_user|
      guest_user.password = SecureRandom.urlsafe_base64
    end
    sign_in user
    redirect_to root_path, notice: 'ゲストユーザーとしてログインしました。'
  end
end
