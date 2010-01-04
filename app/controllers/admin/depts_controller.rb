class Admin::DeptsController < Admin::ApplicationController
  # GET /depts
  # GET /depts.xml
  def index
    @depts = Dept.all
  end

  # GET /depts/1
  # GET /depts/1.xml
  def show
    @dept = Dept.find(params[:id])
  end

  # GET /depts/new
  # GET /depts/new.xml
  def new
    @dept = Dept.new
  end

  # GET /depts/1/edit
  def edit
    @dept = Dept.find(params[:id])
  end

  # POST /depts
  # POST /depts.xml
  def create
    @dept = Dept.new(params[:dept])

   if @dept.save
     flash[:notice] = 'Dept was successfully created.'
     redirect_to admin_depts_path 
    end
  end

  # PUT /depts/1
  # PUT /depts/1.xml
  def update
    @dept = Dept.find(params[:id])

      if @dept.update_attributes(params[:dept])
        flash[:notice] = 'Dept was successfully updated.'
        redirect_to(admin_dept_path(@dept))
      end

  end

  # DELETE /depts/1
  # DELETE /depts/1.xml
  def destroy
    @dept = Dept.find(params[:id])
    @dept.destroy

    redirect_to(admin_depts_url)
  end
end
