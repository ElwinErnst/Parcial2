class GuardsController < ApplicationController
  before_action :set_guard, only: %i[ show edit update destroy ]
  before_action :authenticate_user!
  # GET /guards or /guards.json
  def index
    @guards = Guard.all
    @guards = @guards.order(guard_date: :desc)
  end

  # GET /guards/1 or /guards/1.json
  def show
  end

  # GET /guards/new
  def new
    @guard = Guard.new
  end

  # GET /guards/1/edit
  def edit
  end

  # POST /guards or /guards.json
  def create
    @guard = Guard.new(guard_params)

    respond_to do |format|
      if @guard.save
        format.html { redirect_to @guard, notice: "Guard was successfully created." }
        format.json { render :show, status: :created, location: @guard }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @guard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /guards/1 or /guards/1.json
  def update
    respond_to do |format|
      if @guard.update(guard_params)
        format.html { redirect_to @guard, notice: "Guard was successfully updated." }
        format.json { render :show, status: :ok, location: @guard }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @guard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /guards/1 or /guards/1.json
  def destroy
    @guard.destroy
    respond_to do |format|
      format.html { redirect_to guards_url, notice: "Guard was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guard
      @guard = Guard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def guard_params
      params.require(:guard).permit(:guard_date, :worker_id, :medicalcenter_id)
    end
end
