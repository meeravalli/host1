class BiodataController < ApplicationController
  # GET /biodata
  # GET /biodata.json
  def index
    @biodata = Biodatum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @biodata }
    end
  end

  # GET /biodata/1
  # GET /biodata/1.json
  def show
    @biodatum = Biodatum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @biodatum }
    end
  end

  # GET /biodata/new
  # GET /biodata/new.json
  def new
    @biodatum = Biodatum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @biodatum }
    end
  end

  # GET /biodata/1/edit
  def edit
    @biodatum = Biodatum.find(params[:id])
  end

  # POST /biodata
  # POST /biodata.json
  def create
    @biodatum = Biodatum.new(params[:biodatum])

    respond_to do |format|
      if @biodatum.save
        format.html { redirect_to @biodatum, notice: 'Biodatum was successfully created.' }
        format.json { render json: @biodatum, status: :created, location: @biodatum }
      else
        format.html { render action: "new" }
        format.json { render json: @biodatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /biodata/1
  # PUT /biodata/1.json
  def update
    @biodatum = Biodatum.find(params[:id])

    respond_to do |format|
      if @biodatum.update_attributes(params[:biodatum])
        format.html { redirect_to @biodatum, notice: 'Biodatum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @biodatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /biodata/1
  # DELETE /biodata/1.json
  def destroy
    @biodatum = Biodatum.find(params[:id])
    @biodatum.destroy

    respond_to do |format|
      format.html { redirect_to biodata_url }
      format.json { head :no_content }
    end
  end
end
