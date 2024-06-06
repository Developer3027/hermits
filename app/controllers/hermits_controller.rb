class HermitsController < ApplicationController
  before_action :set_hermit, only: %i[ show edit update destroy ]

  # GET /hermits or /hermits.json
  def index
    @hermits = Hermit.all
  end

  # GET /hermits/1 or /hermits/1.json
  def show
  end

  # GET /hermits/new
  def new
    @hermit = Hermit.new
  end

  # GET /hermits/1/edit
  def edit
  end

  # POST /hermits or /hermits.json
  def create
    @hermit = Hermit.new(hermit_params)

    respond_to do |format|
      if @hermit.save
        format.html { redirect_to hermit_url(@hermit), notice: "Hermit was successfully created." }
        format.json { render :show, status: :created, location: @hermit }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @hermit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hermits/1 or /hermits/1.json
  def update
    respond_to do |format|
      if @hermit.update(hermit_params)
        format.html { redirect_to hermit_url(@hermit), notice: "Hermit was successfully updated." }
        format.json { render :show, status: :ok, location: @hermit }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @hermit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hermits/1 or /hermits/1.json
  def destroy
    @hermit.destroy!

    respond_to do |format|
      format.html { redirect_to hermits_url, notice: "Hermit was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hermit
      @hermit = Hermit.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hermit_params
      params.require(:hermit).permit(:start_year, :alias, :subs, :description, :youtube, :twitch, :twitter, :instagram, :patreon, :skin_alt, :face_alt)
    end
end
