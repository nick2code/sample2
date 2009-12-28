class DeptsController < ApplicationController
  # GET /depts
  # GET /depts.xml
  def index
    @depts = Dept.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @depts }
    end
  end

  # GET /depts/1
  # GET /depts/1.xml
  def show
    @dept = Dept.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @dept }
    end
  end

  # GET /depts/new
  # GET /depts/new.xml
  def new
    @dept = Dept.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @dept }
    end
  end

  # GET /depts/1/edit
  def edit
    @dept = Dept.find(params[:id])
  end

  # POST /depts
  # POST /depts.xml
  def create
    @dept = Dept.new(params[:dept])

    respond_to do |format|
      if @dept.save
        flash[:notice] = 'Dept was successfully created.'
        format.html { redirect_to(@dept) }
        format.xml  { render :xml => @dept, :status => :created, :location => @dept }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @dept.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /depts/1
  # PUT /depts/1.xml
  def update
    @dept = Dept.find(params[:id])

    respond_to do |format|
      if @dept.update_attributes(params[:dept])
        flash[:notice] = 'Dept was successfully updated.'
        format.html { redirect_to(@dept) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @dept.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /depts/1
  # DELETE /depts/1.xml
  def destroy
    @dept = Dept.find(params[:id])
    @dept.destroy

    respond_to do |format|
      format.html { redirect_to(depts_url) }
      format.xml  { head :ok }
    end
  end
end
