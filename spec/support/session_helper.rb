  def sing_up
      visit new_user_registration_path #На какую страницу перейти

      fill_in :user_email, :with => 'user@example.com'
      fill_in :user_username, :with => 'mike'
      fill_in :user_password, :with => 'secure123!@#'
      fill_in :user_password_confirmation, :with => 'secure123!@#'

      click_button 'Sign up'
  end