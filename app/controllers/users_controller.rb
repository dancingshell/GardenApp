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
    @is_signup = true
    @user = User.new(user_params)
    # @user.zipcode = Zipcode.where(:query=> {"zipcode" => params[:zipcode].to_i}).to_a.first
    # format.html { redirect_to root_path, notice: 'Feature was successfully created.' }
    #     format.json { render action: 'show', status: :created, location: @feature }
    if @user.save
      session[:user_id] = @user.id.to_s
      redirect_to gardens_path
    else
      respond_to do |format|
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # def create
  #   @user = User.new(params.require(:user).permit(:username, :email, :password, :password_confirmation, :image))

  #   if @user.save
  #     session[:user_id] = @user.id.to_s
  #     redirect_to locations_path
  #   else
  #     respond_to do |format|
  #       format.html { render action: 'new' }
  #       format.json { render json: @user.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end






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
    params.require(:user).permit(:first_name, :last_name, :password, :password_confirmation, :email, :zipcode, :avatar)
  end

end
