class MarketassetsController < ApplicationController
  before_action :set_marketasset, only: [:show, :edit, :update, :destroy]

  # GET /marketassets
  # GET /marketassets.json
  def index
    @marketassets = Marketasset.all
  end

  # GET /marketassets/1
  # GET /marketassets/1.json
  def show
  end

  # GET /marketassets/new
  def new
    @marketasset = Marketasset.new
  end

  # GET /marketassets/1/edit
  def edit
  end

  # POST /marketassets
  # POST /marketassets.json
  def create
    @marketasset = Marketasset.new(marketasset_params)

    respond_to do |format|
      if @marketasset.save
        format.html { redirect_to @marketasset, notice: 'Marketasset was successfully created.' }
        format.json { render :show, status: :created, location: @marketasset }
      else
        format.html { render :new }
        format.json { render json: @marketasset.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /marketassets/1
  # PATCH/PUT /marketassets/1.json
  def update
    respond_to do |format|
      if @marketasset.update(marketasset_params)
        format.html { redirect_to @marketasset, notice: 'Marketasset was successfully updated.' }
        format.json { render :show, status: :ok, location: @marketasset }
      else
        format.html { render :edit }
        format.json { render json: @marketasset.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /marketassets/1
  # DELETE /marketassets/1.json
  def destroy
    @marketasset.destroy
    respond_to do |format|
      format.html { redirect_to marketassets_url, notice: 'Marketasset was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_marketasset
      @marketasset = Marketasset.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def marketasset_params
      params.require(:marketasset).permit(:name, :value)
    end
end
