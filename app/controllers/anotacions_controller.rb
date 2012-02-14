class AnotacionsController < ApplicationController
  # GET /anotacions
  # GET /anotacions.json
  def index
    @anotacions = Anotacion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @anotacions }
    end
  end

  # GET /anotacions/1
  # GET /anotacions/1.json
  def show
    @anotacion = Anotacion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @anotacion }
    end
  end

  # GET /anotacions/new
  # GET /anotacions/new.json
  def new
    @anotacion = Anotacion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @anotacion }
    end
  end

  # GET /anotacions/1/edit
  def edit
    @anotacion = Anotacion.find(params[:id])
  end

  # POST /anotacions
  # POST /anotacions.json
  def create
    @anotacion = Anotacion.new(params[:anotacion])

    respond_to do |format|
      if @anotacion.save
        format.html { redirect_to @anotacion, notice: 'Anotacion was successfully created.' }
        format.json { render json: @anotacion, status: :created, location: @anotacion }
      else
        format.html { render action: "new" }
        format.json { render json: @anotacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /anotacions/1
  # PUT /anotacions/1.json
  def update
    @anotacion = Anotacion.find(params[:id])

    respond_to do |format|
      if @anotacion.update_attributes(params[:anotacion])
        format.html { redirect_to @anotacion, notice: 'Anotacion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @anotacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anotacions/1
  # DELETE /anotacions/1.json
  def destroy
    @anotacion = Anotacion.find(params[:id])
    @anotacion.destroy

    respond_to do |format|
      format.html { redirect_to anotacions_url }
      format.json { head :no_content }
    end
  end
end
