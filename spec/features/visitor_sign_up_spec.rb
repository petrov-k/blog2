require "rails_helper"

feature "sign up" do
    scenario "allows visitor to sign up" do
       visit new_user_registration_path

       fill_in :user_email, with: "user@example.com"
       fill_in :user_username, with: "user"
       fill_in :user_password, with: "user@example.com"
       fill_in :user_password_confirmation, with: "user@example.com"

       click_button 'Sign up'
       expect(page).to have_content I18n.t('devise.registrations.signed_up')
    end    
end