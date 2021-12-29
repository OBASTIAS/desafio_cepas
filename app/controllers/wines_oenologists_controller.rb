class WinesOenologistsController < ApplicationController
  before_action :set_wines_oenologist, only: %i[ show edit update destroy ]

  # GET /wines_oenologists or /wines_oenologists.json
  def index
    @wines_oenologists = WinesOenologist.all
  end

  # GET /wines_oenologists/1 or /wines_oenologists/1.json
  def show
  end

  # GET /wines_oenologists/new
  def new
    @wines_oenologist = WinesOenologist.new
  end

  # GET /wines_oenologists/1/edit
  def edit
  end

  # POST /wines_oenologists or /wines_oenologists.json
  def create
    @wines_oenologist = WinesOenologist.new(wines_oenologist_params)

    respond_to do |format|
      if @wines_oenologist.save
        format.html { redirect_to wines_oenologist_url(@wines_oenologist), notice: "Wines oenologist was successfully created." }
        format.json { render :show, status: :created, location: @wines_oenologist }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @wines_oenologist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wines_oenologists/1 or /wines_oenologists/1.json
  def update
    respond_to do |format|
      if @wines_oenologist.update(wines_oenologist_params)
        format.html { redirect_to wines_oenologist_url(@wines_oenologist), notice: "Wines oenologist was successfully updated." }
        format.json { render :show, status: :ok, location: @wines_oenologist }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @wines_oenologist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wines_oenologists/1 or /wines_oenologists/1.json
  def destroy
    @wines_oenologist.destroy

    respond_to do |format|
      format.html { redirect_to wines_oenologists_url, notice: "Wines oenologist was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wines_oenologist
      @wines_oenologist = WinesOenologist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def wines_oenologist_params
      params.require(:wines_oenologist).permit(:wine_id, :oenologist_id, :grade)
    end
end
