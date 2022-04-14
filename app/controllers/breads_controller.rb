class BreadsController < ApplicationController
  before_action :set_bread, only: %i[ show edit update destroy ]

  # GET /breads or /breads.json
  def index
    @breads = Bread.all
  end

  # GET /breads/1 or /breads/1.json
  def show
  end

  # GET /breads/new
  def new
    @bread = Bread.new
  end

  # GET /breads/1/edit
  def edit
  end

  # POST /breads or /breads.json
  def create
    @bread = Bread.new(bread_params)

    respond_to do |format|
      if @bread.save
        format.html { redirect_to bread_url(@bread), notice: "Bread was successfully created." }
        format.json { render :show, status: :created, location: @bread }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bread.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /breads/1 or /breads/1.json
  def update
    respond_to do |format|
      if @bread.update(bread_params)
        format.html { redirect_to bread_url(@bread), notice: "Bread was successfully updated." }
        format.json { render :show, status: :ok, location: @bread }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bread.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /breads/1 or /breads/1.json
  def destroy
    @bread.destroy

    respond_to do |format|
      format.html { redirect_to breads_url, notice: "Bread was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bread
      @bread = Bread.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bread_params
      params.require(:bread).permit(:name, :story)
    end
end
