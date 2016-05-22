class ClassesController < ApplicationController
  before_action :set_class, only: [:show, :edit, :update, :destroy]

  # GET /classes
  # GET /classes.json
  def index
    @classes = Classe.all
  end

  # GET /classes/1
  # GET /classes/1.json
  def show
  end

  # GET /classes/new
  def new
    @class = Classe.new
  end

  # GET /classes/1/edit
  def edit
  end

  # POST /classes
  # POST /classes.json
  def create
    @class = Classe.new(class_params)

    respond_to do |format|
      if @class.save
        format.html { redirect_to @class, notice: 'Classe was successfully created.' }
        format.json { render :show, status: :created, location: @class }
      else
        format.html { render :new }
        format.json { render json: @class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /classes/1
  # PATCH/PUT /classes/1.json
  def update
    respond_to do |format|
      if @class.update(class_params)
        format.html { redirect_to @class, notice: 'Classe was successfully updated.' }
        format.json { render :show, status: :ok, location: @class }
      else
        format.html { render :edit }
        format.json { render json: @class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /classes/1
  # DELETE /classes/1.json
  def destroy
    @class.destroy
    respond_to do |format|
      format.html { redirect_to classes_url, notice: 'Classe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_class
      @class = Classe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def class_params
      params.require(:class).permit(:codigo, :course_id, :discipline_id, :study_id, :num_aluno)
    end
end
