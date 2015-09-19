require "spec_helper"

feature "Account Creation" do 
  #before(:each) {sing_up}

  scenario "allows guest to create account" do      
    sing_up 
    expect(page).to have_content I18n.t('devise.registrations.signed_up')
  end
end


