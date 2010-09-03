class WorkLogsController < ApplicationController
  respond_to :html
  
  # GET /work_logs
  # GET /work_logs.xml
  def index
    @start_dates = ["2010-09-01","2010-09-08","2010-09-15","2010-09-22","2010-09-29",
      "2010-10-06","2010-10-13","2010-10-20","2010-10-27","2010-11-03","2010-11-10",
      "2010-11-17","2010-11-24", "2010-12-01","2010-12-08"]
    
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

  # POST /work_logs
  # POST /work_logs.xml
  def create
    @work_log = WorkLog.new(params[:work_log])
    
    
    if @work_log.save
      flash[:notice] = "Work entry was created successfully."
      respond_with(@work_log, :status => :created, :location => @work_log) do |format|
        format.html { redirect_to work_logs_path }
      end
    else
      respond_with(@work_log.errors, :status => :unprocessable_entity) do |format|
        format.html { render :action => :new }
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
  
  def report
    @people = Person.all
    @work_types = WorkType.all
    @work_logs = WorkLog.where("worked_on >= ? AND worked_on <= ?", params[:start_date], params[:end_date])
  end
  
  def all_report
    @people = Person.all
    @work_types = WorkType.all
    @work_logs = WorkLog.order("worked_on >= ? AND <= ?", "2010-09-01", "2010-12-15")
  end
end
