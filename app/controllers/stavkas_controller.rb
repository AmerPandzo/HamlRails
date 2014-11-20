class StavkasController < ApplicationController
  before_action :set_stavka, only: [:show, :edit, :update, :destroy]

  # GET /stavkas
  # GET /stavkas.json
  def index
    @stavkas = Stavka.all
  end

  # GET /stavkas/1
  # GET /stavkas/1.json
  def show
  end

  # GET /stavkas/new
  def new
    @stavka = Stavka.new
  end

  # GET /stavkas/1/edit
  def edit
  end

  # POST /stavkas
  # POST /stavkas.json
  def create
    @stavka = Stavka.new(stavka_params)

    respond_to do |format|
      if @stavka.save
        format.html { redirect_to @stavka, notice: 'Stavka was successfully created.' }
        format.json { render :show, status: :created, location: @stavka }
      else
        format.html { render :new }
        format.json { render json: @stavka.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stavkas/1
  # PATCH/PUT /stavkas/1.json
  def update
    respond_to do |format|
      if @stavka.update(stavka_params)
        format.html { redirect_to @stavka, notice: 'Stavka was successfully updated.' }
        format.json { render :show, status: :ok, location: @stavka }
      else
        format.html { render :edit }
        format.json { render json: @stavka.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stavkas/1
  # DELETE /stavkas/1.json
  def destroy
    @stavka.destroy
    respond_to do |format|
      format.html { redirect_to stavkas_url, notice: 'Stavka was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stavka
      @stavka = Stavka.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stavka_params
      params.require(:stavka).permit(:naziv, :iznos, :faktura_id)
    end
end
