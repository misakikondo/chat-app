module SignInSupport
  def sign_in(user)
    visit root_path
    fill_in 'user_email', with: user.email
    fill_in 'user_password', with: user.password
    click_on("Log in")
    expect(current_path).to eq root_path
  end
end

# spec配下で、このsign_inメソッドが使えるようになり、ログインの行為はこのメソッドで呼び出せる