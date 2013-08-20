class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:index, :show, :edit, :update, :destroy]
  before_action :set_user, only: [:show]

  # GET /users
  # GET /users.json
  def index
    @users = User.paginate(page: params[:page])
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end
end
