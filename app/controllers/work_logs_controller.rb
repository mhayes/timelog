class WorkLogsController < ApplicationController
  # GET /work_logs
  # GET /work_logs.xml
  def index
    @work_logs = WorkLog.order("updated_at DESC").limit(10)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @work_logs }
    end
  end

  # GET /work_logs/1
  # GET /work_logs/1.xml
  def show
    @work_log = WorkLog.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @work_log }
    end
  end

  # GET /work_logs/new
  # GET /work_logs/new.xml
  def new
    @work_log = WorkLog.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @work_log }
    end
  end

  # GET /work_logs/1/edit
  def edit
    @work_log = WorkLog.find(params[:id])
  end

  # POST /work_logs
  # POST /work_logs.xml
  def create
    @work_log = WorkLog.new(params[:work_log])

    respond_to do |format|
      if @work_log.save
        format.html { redirect_to(@work_log, :notice => 'Work log was successfully created.') }
        format.xml  { render :xml => @work_log, :status => :created, :location => @work_log }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @work_log.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /work_logs/1
  # PUT /work_logs/1.xml
  def update
    @work_log = WorkLog.find(params[:id])

    respond_to do |format|
      if @work_log.update_attributes(params[:work_log])
        format.html { redirect_to(@work_log, :notice => 'Work log was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @work_log.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /work_logs/1
  # DELETE /work_logs/1.xml
  def destroy
    @work_log = WorkLog.find(params[:id])
    @work_log.destroy

    respond_to do |format|
      format.html { redirect_to(work_logs_url) }
      format.xml  { head :ok }
    end
  end
end
