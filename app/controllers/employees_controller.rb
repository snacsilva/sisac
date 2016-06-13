class EmployeesController < ApplicationController
  before_action :set_employee, only: [:show, :edit, :update, :destroy]
  before_action :set_user, only: [:show, :edit, :update, :destroy]


  # GET /employees
  # GET /employees.json
  def index
    @employees = Employee.all
  end

  # GET /employees/1
  # GET /employees/1.json
  def show
  end

  # GET /employees/new
  def new
    @employee = Employee.new
    @employee.build_user
    @employee.build_professor
    @employee.build_coordinator

  end

  # GET /employees/1/edit
  def edit
  end

  # POST /employees
  # POST /employees.json
  def create
    @employee = Employee.new(employee_params)

    respond_to do |format|
      if @employee.save
        User.update(Employee.last.user.id, login:"F"+Employee.last.id.to_s)


        format.html { redirect_to @employee, notice: 'Employee was successfully created.' }
        format.json { render :show, status: :created, location: @employee }
      else
        format.html { render :new }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employees/1
  # PATCH/PUT /employees/1.json
  def update
    respond_to do |format|
      if @employee.update(employee_params)
        format.html { redirect_to @employee, notice: 'Employee was successfully updated.' }
        format.json { render :show, status: :ok, location: @employee }
      else
        format.html { render :edit }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employees/1
  # DELETE /employees/1.json
  def destroy
    @employee.destroy
    respond_to do |format|
      format.html { redirect_to employees_url, notice: 'Employee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee
      @employee = Employee.find(params[:id])
    end


    def set_user
      @user = User.all
    end

    def set_professor
      @professor = Professor.all
    end

    def set_coordenador
      @coordinator = Coordinator.all
    end


  # Never trust parameters from the scary internet, only allow the white list through.
    def employee_params
      params.require(:employee).permit(:function, :sector_id, :set_coordenador,
                                       :set_professor, :user_id, :set_user,
                                       :user_attributes => [:id, :name, :data_nascimento,
                                                            :num_identidade, :cpf, :cidade,
                                                            :estado, :telefone, :celular, :email,
                                                            :login, :password, :password_confirmation])
    end
end
