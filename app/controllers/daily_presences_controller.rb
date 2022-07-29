class DailyPresencesController < ApplicationController
  before_action :set_daily_presence, only: %i[ show edit update destroy ]
  before_action :set_student_options, only: [ :new, :create, :edit, :update ]

  # GET /daily_presences or /daily_presences.json
  def index
    @daily_presences = DailyPresence.all
  end

  # GET /daily_presences/1 or /daily_presences/1.json
  def show
  end

  # GET /daily_presences/new
  def new
    @daily_presence = DailyPresence.new
  end

  # GET /daily_presences/1/edit
  def edit
  end

  # POST /daily_presences or /daily_presences.json
  def create
    @daily_presence = DailyPresence.new(daily_presence_params)

    respond_to do |format|
      if @daily_presence.save
        format.html { redirect_to daily_presence_url(@daily_presence), notice: "Daily presence was successfully created." }
        format.json { render :show, status: :created, location: @daily_presence }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @daily_presence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daily_presences/1 or /daily_presences/1.json
  def update
    respond_to do |format|
      if @daily_presence.update(daily_presence_params)
        format.html { redirect_to daily_presence_url(@daily_presence), notice: "Daily presence was successfully updated." }
        format.json { render :show, status: :ok, location: @daily_presence }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @daily_presence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daily_presences/1 or /daily_presences/1.json
  def destroy
    @daily_presence.destroy

    respond_to do |format|
      format.html { redirect_to daily_presences_url, notice: "Daily presence was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
  def set_student_options
    @student_options = Student.all.pluck(:name, :id)
  end
  
    # Use callbacks to share common setup or constraints between actions.
    def set_daily_presence
      @daily_presence = DailyPresence.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def daily_presence_params
      params.require(:daily_presence).permit(:student_id, :date)
    end
end
