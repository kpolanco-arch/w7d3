require 'rails_helper'

RSpec.describe UsersController, type: :controller do

describe 'GET #new' do
    it 'renders new users page' do

      get :new, users: {username:'kayla123', password: 'password'}
      expect(response).to render_template('new')
      expect(response).to have_http_status(200)
    end
  end


context 'with invalid params' do
  it 'validates the presence of id' do
    post :create, params: { users: { username:'kayla123', password: ''} }
    expect(response).to render_template('new')
    expect(flash[:errors]).to be_present
  end
end

context 'with valid params' do
  it 'redirects to the users show page' do
    post :create, params: { users: { username:'kayla123', password: 'password' } }
    expect(response).to redirect_to(user_url(User.last))
  end
end




end
