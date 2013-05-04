class UsersampdescsController < ApplicationController
  # GET /usersampdescs
  # GET /usersampdescs.json
  def index
    @usersampdescs = Usersampdesc.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @usersampdescs }
    end
  end

  # GET /usersampdescs/1
  # GET /usersampdescs/1.json
  def show
    @usersampdesc = Usersampdesc.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @usersampdesc }
    end
  end

  # GET /usersampdescs/new
  # GET /usersampdescs/new.json
  def new
    @usersampdesc = Usersampdesc.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @usersampdesc }
    end
  end

  # GET /usersampdescs/1/edit
  def edit
    @usersampdesc = Usersampdesc.find(params[:id])
  end

  # POST /usersampdescs
  # POST /usersampdescs.json
  def create
    @usersampdesc = Usersampdesc.new(params[:usersampdesc])

    respond_to do |format|
      if @usersampdesc.save
        format.html { redirect_to @usersampdesc, notice: 'Usersampdesc was successfully created.' }
        format.json { render json: @usersampdesc, status: :created, location: @usersampdesc }
      else
        format.html { render action: "new" }
        format.json { render json: @usersampdesc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /usersampdescs/1
  # PUT /usersampdescs/1.json
  def update
    @usersampdesc = Usersampdesc.find(params[:id])

    respond_to do |format|
      if @usersampdesc.update_attributes(params[:usersampdesc])
        format.html { redirect_to @usersampdesc, notice: 'Usersampdesc was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @usersampdesc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usersampdescs/1
  # DELETE /usersampdescs/1.json
  def destroy
    @usersampdesc = Usersampdesc.find(params[:id])
    @usersampdesc.destroy

    respond_to do |format|
      format.html { redirect_to usersampdescs_url }
      format.json { head :no_content }
    end
  end
end
