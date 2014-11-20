class KlijentsController < ApplicationController
  before_action :set_klijent, only: [:show, :edit, :update, :destroy]

  # GET /klijents
  # GET /klijents.json
  def index
    @klijents = Klijent.all
  end

  # GET /klijents/1
  # GET /klijents/1.json
  def show
  end

  # GET /klijents/new
  def new
    @klijent = Klijent.new
  end

  # GET /klijents/1/edit
  def edit
  end

  # POST /klijents
  # POST /klijents.json
  def create
    @klijent = Klijent.new(klijent_params)

    respond_to do |format|
      if @klijent.save
        format.html { redirect_to @klijent, notice: 'Klijent was successfully created.' }
        format.json { render :show, status: :created, location: @klijent }
      else
        format.html { render :new }
        format.json { render json: @klijent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /klijents/1
  # PATCH/PUT /klijents/1.json
  def update
    respond_to do |format|
      if @klijent.update(klijent_params)
        format.html { redirect_to @klijent, notice: 'Klijent was successfully updated.' }
        format.json { render :show, status: :ok, location: @klijent }
      else
        format.html { render :edit }
        format.json { render json: @klijent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /klijents/1
  # DELETE /klijents/1.json
  def destroy
    @klijent.destroy
    respond_to do |format|
      format.html { redirect_to klijents_url, notice: 'Klijent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_klijent
      @klijent = Klijent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def klijent_params
      params.require(:klijent).permit(:naziv)
    end
end
