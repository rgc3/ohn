class OverheardsController < ApplicationController
  before_action :set_overheard, only: [:show, :edit, :update, :destroy]

  # GET /overheards
  # GET /overheards.json
  def index
    @overheards = Overheard.all
  end

  # GET /overheards/1
  # GET /overheards/1.json
  def show
  end

  # GET /overheards/new
  def new
    @overheard = Overheard.new
  end

  # GET /overheards/1/edit
  def edit
  end

  # POST /overheards
  # POST /overheards.json
  def create
    @overheard = Overheard.new(overheard_params)

    respond_to do |format|
      if @overheard.save
        format.html { redirect_to @overheard, notice: 'Overheard was successfully created.' }
        format.json { render :show, status: :created, location: @overheard }
      else
        format.html { render :new }
        format.json { render json: @overheard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /overheards/1
  # PATCH/PUT /overheards/1.json
  def update
    respond_to do |format|
      if @overheard.update(overheard_params)
        format.html { redirect_to @overheard, notice: 'Overheard was successfully updated.' }
        format.json { render :show, status: :ok, location: @overheard }
      else
        format.html { render :edit }
        format.json { render json: @overheard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /overheards/1
  # DELETE /overheards/1.json
  def destroy
    @overheard.destroy
    respond_to do |format|
      format.html { redirect_to overheards_url, notice: 'Overheard was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_overheard
      @overheard = Overheard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def overheard_params
      params.require(:overheard).permit(:title, :author, :location, :oh_entry)
    end
end
