class RiskAreasController < ApplicationController
  # GET /risk_areas
  # GET /risk_areas.json
  def index
    @risk_areas = RiskArea.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @risk_areas }
    end
  end

  # GET /risk_areas/1
  # GET /risk_areas/1.json
  def show
    @risk_area = RiskArea.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @risk_area }
    end
  end

  # GET /risk_areas/new
  # GET /risk_areas/new.json
  def new
    @risk_area = RiskArea.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @risk_area }
    end
  end

  # GET /risk_areas/1/edit
  def edit
    @risk_area = RiskArea.find(params[:id])
  end

  # POST /risk_areas
  # POST /risk_areas.json
  def create
    @risk_area = RiskArea.new(params[:risk_area])

    respond_to do |format|
      if @risk_area.save
        format.html { redirect_to @risk_area, :notice => 'Risk area was successfully created.' }
        format.json { render :json => @risk_area, :status => :created, :location => @risk_area }
      else
        format.html { render :action => "new" }
        format.json { render :json => @risk_area.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /risk_areas/1
  # PUT /risk_areas/1.json
  def update
    @risk_area = RiskArea.find(params[:id])

    respond_to do |format|
      if @risk_area.update_attributes(params[:risk_area])
        format.html { redirect_to @risk_area, :notice => 'Risk area was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @risk_area.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /risk_areas/1
  # DELETE /risk_areas/1.json
  def destroy
    @risk_area = RiskArea.find(params[:id])
    @risk_area.destroy

    respond_to do |format|
      format.html { redirect_to risk_areas_url }
      format.json { head :ok }
    end
  end
end
