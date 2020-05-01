class SessionsController < ApplicationController
  def create
    auth = request.env["omniauth.auth"]  
    auth.uid # Gets the UID value of the user that has just signed in
    # Create a session, redirect etc
  end

  def logout  
    reset_session
    redirect_to "https://adfs.example.com/adfs/ls/?wa=wsignout1.0&wreply=https://#{request.host}"
  end
end