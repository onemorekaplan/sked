class SkedlsController < ApplicationController
  # GET /skedls
  # GET /skedls.json
  def index
    @skedls = Skedl.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @skedls }
    end
  end

  # GET /skedls/1
  # GET /skedls/1.json
  def show
    @skedl = Skedl.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @skedl }
    end
  end

  # GET /skedls/new
  # GET /skedls/new.json
  def new
    @skedl = Skedl.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @skedl }
    end
  end

  # GET /skedls/1/edit
  def edit
    @skedl = Skedl.find(params[:id])
  end

  # POST /skedls
  # POST /skedls.json
  def create
    @skedl = Skedl.new(params[:skedl])

    respond_to do |format|
      if @skedl.save
        format.html { redirect_to @skedl, notice: 'Skedl was successfully created.' }
        format.json { render json: @skedl, status: :created, location: @skedl }
      else
        format.html { render action: "new" }
        format.json { render json: @skedl.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /skedls/1
  # PUT /skedls/1.json
  def update
    @skedl = Skedl.find(params[:id])

    respond_to do |format|
      if @skedl.update_attributes(params[:skedl])
        format.html { redirect_to @skedl, notice: 'Skedl was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @skedl.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /skedls/1
  # DELETE /skedls/1.json
  def destroy
    @skedl = Skedl.find(params[:id])
    @skedl.destroy

    respond_to do |format|
      format.html { redirect_to skedls_url }
      format.json { head :no_content }
    end
  end
end
