class DirectoresController < ApplicationController
  # GET /directores
  # GET /directores.json
  def index
    @directores = Director.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @directores }
    end
  end

  # GET /directores/1
  # GET /directores/1.json
  def show
    @director = Director.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @director }
    end
  end

  # GET /directores/new
  # GET /directores/new.json
  def new
    @director = Director.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @director }
    end
  end

  # GET /directores/1/edit
  def edit
    @director = Director.find(params[:id])
  end

  # POST /directores
  # POST /directores.json
  def create
    @director = Director.new(params[:director])

    respond_to do |format|
      if @director.save
        format.html { redirect_to @director, notice: 'Director was successfully created.' }
        format.json { render json: @director, status: :created, location: @director }
      else
        format.html { render action: "new" }
        format.json { render json: @director.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /directores/1
  # PUT /directores/1.json
  def update
    @director = Director.find(params[:id])

    respond_to do |format|
      if @director.update_attributes(params[:director])
        format.html { redirect_to @director, notice: 'Director was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @director.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /directores/1
  # DELETE /directores/1.json
  def destroy
    @director = Director.find(params[:id])
    @director.destroy

    respond_to do |format|
      format.html { redirect_to directores_url }
      format.json { head :ok }
    end
  end
end
