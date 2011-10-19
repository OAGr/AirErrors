class ErrorsController < ApplicationController
  before_filter :authenticate_user!
  # GET /errors
  # GET /errors.json
  def index
    @errors = Error.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @errors }
    end
  end

  # GET /errors/1
  # GET /errors/1.json
  def show
    @error = Error.find(params[:id])
    @unit = @error.unit
    @company = @unit.company
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @error }
    end
  end

  # GET /errors/new
  # GET /errors/new.json
  def new
    @error = Error.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @error }
    end
  end

  # GET /errors/1/edit
  def edit
    @error = Error.find(params[:id])
    @unit = @error.unit
  end

  # POST /errors
  # POST /errors.json
  def create
    @unit = Unit.find(params[:unit_id])
    @error = @unit.errors.create(params[:error])
    redirect_to unit_path(@unit)
  end

  # PUT /errors/1
  # PUT /errors/1.json
  def update
    @error = Error.find(params[:id])

    respond_to do |format|
      if @error.update_attributes(params[:error])
        format.html { redirect_to @error, notice: 'Error was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @error.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /errors/1
  # DELETE /errors/1.json
  def destroy
    @error = Error.find(params[:id])
    @error.destroy

    respond_to do |format|
      format.html { redirect_to errors_url }
      format.json { head :ok }
    end
  end
end
