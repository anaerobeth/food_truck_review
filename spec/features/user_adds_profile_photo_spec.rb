require 'spec_helper'

feature 'authenicated user adds a profile photo',%Q{
  As an authenticated foodie
  I want to upload a profile photo
  So that people know what I look like
}do

# ACCEPTANCE CRITERIA
#
# The image must be in a valid format( jpeg, png, ... )
# The image must within width/height and file size restrictions
# If I do not upload this type of photo, I get an error message
# If I am successful, I can see my image on my profile

  scenario 'a signed in user with valid information' do

    user = FactoryGirl.create(:user)
    sign_in( user )

    page.should have_content('Upload a Photo')
    page.should have_selector('input')

  end


end
