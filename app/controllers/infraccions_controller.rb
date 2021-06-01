class InfraccionsController < ApplicationController
  before_action :set_infraccion, only: %i[ show edit update destroy ]

  # GET /infraccions or /infraccions.json
  def index
    @infraccions = Infraccion.all
  end

  # GET /infraccions/1 or /infraccions/1.json
  def show
  end

  # GET /infraccions/new
  def new
    @infraccion = Infraccion.new
  end

  # GET /infraccions/1/edit
  def edit
  end

  # POST /infraccions or /infraccions.json
  def create
    @infraccion = Infraccion.new(infraccion_params)

    respond_to do |format|
      if @infraccion.save
        format.html { redirect_to @infraccion, notice: "Infraccion was successfully created." }
        format.json { render :show, status: :created, location: @infraccion }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @infraccion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /infraccions/1 or /infraccions/1.json
  def update
    respond_to do |format|
      if @infraccion.update(infraccion_params)
        format.html { redirect_to @infraccion, notice: "Infraccion was successfully updated." }
        format.json { render :show, status: :ok, location: @infraccion }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @infraccion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /infraccions/1 or /infraccions/1.json
  def destroy
    @infraccion.destroy
    respond_to do |format|
      format.html { redirect_to infraccions_url, notice: "Infraccion was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_infraccion
      @infraccion = Infraccion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def infraccion_params
      params.require(:infraccion).permit(:valor, :fecha, :estado, :Prestamo_id)
    end
end
