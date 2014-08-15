class UsersController < ApplicationController

  def index
    @users = User.all
    @weather
  end

  def show
    @user = User.find(params[:id])
    zipcode = @user.zipcode.zipcode
  
    url = HTTParty.get("http://api.openweathermap.org/data/2.5/forecast/daily?q=#{zipcode},USA&mode=json&units=imperial&cnt=1")
    @weather = JSON.parse(url.body)
  
  end

  # prepare to show the sign up form
  def new
    @user = User.new
    @is_signup = true
  end

  # actually build the user
  def create
    @user = User.new(user_params)
    @user.zipcode = Zipcode.where(:query=> {"zipcode" => params[:zipcode].to_i}).to_a.first
    # @zipcode.each do |zip|
    #   if @user.zipcode_id == zip.zipcode
    #     @user.zipcode_id = zip
    #   end
    # end

    if @user.save
      redirect_to new_session_path
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
    @zipcode = @user.zipcode
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to gardens_path
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation, :email, :avatar)
  end

end
