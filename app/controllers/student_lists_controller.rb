class StudentListsController < ApplicationController
  before_action :set_student_list, only: %i[ show edit update destroy ]

  # GET /student_lists or /student_lists.json
  def index
    @student_lists = StudentList.all
  end

  # GET /student_lists/1 or /student_lists/1.json
  def show
  end

  # GET /student_lists/new
  def new
    @student_list = StudentList.new
  end

  # GET /student_lists/1/edit
  def edit
  end

  # POST /student_lists or /student_lists.json
  def create
    @student_list = StudentList.new(student_list_params)

    respond_to do |format|
      if @student_list.save
        format.html { redirect_to student_list_url(@student_list), notice: "Student list was successfully created." }
        format.json { render :show, status: :created, location: @student_list }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @student_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student_lists/1 or /student_lists/1.json
  def update
    respond_to do |format|
      if @student_list.update(student_list_params)
        format.html { redirect_to student_list_url(@student_list), notice: "Student list was successfully updated." }
        format.json { render :show, status: :ok, location: @student_list }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @student_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_lists/1 or /student_lists/1.json
  def destroy
    @student_list.destroy

    respond_to do |format|
      format.html { redirect_to student_lists_url, notice: "Student list was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_list
      @student_list = StudentList.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def student_list_params
      params.require(:student_list).permit(:date)
    end
end
