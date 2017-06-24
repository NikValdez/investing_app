class StockValuesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_stock_value, only: [:show, :edit, :update, :destroy]

  # GET /stock_values
  # GET /stock_values.json
  def index
    @stock_values = StockValue.all
  end

  # GET /stock_values/1
  # GET /stock_values/1.json
  def show
  end

  # GET /stock_values/new
  def new
    @stock_value = StockValue.new
  end

  # GET /stock_values/1/edit
  def edit
  end

  # POST /stock_values
  # POST /stock_values.json
  def create
    @stock_value = StockValue.new(stock_value_params)

    respond_to do |format|
      if @stock_value.save
        format.html { redirect_to @stock_value, notice: 'Stock value was successfully created.' }
        format.json { render :show, status: :created, location: @stock_value }
      else
        format.html { render :new }
        format.json { render json: @stock_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stock_values/1
  # PATCH/PUT /stock_values/1.json
  def update
    respond_to do |format|
      if @stock_value.update(stock_value_params)
        format.html { redirect_to @stock_value, notice: 'Stock value was successfully updated.' }
        format.json { render :show, status: :ok, location: @stock_value }
      else
        format.html { render :edit }
        format.json { render json: @stock_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stock_values/1
  # DELETE /stock_values/1.json
  def destroy
    @stock_value.destroy
    respond_to do |format|
      format.html { redirect_to stock_values_url, notice: 'Stock value was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stock_value
      @stock_value = StockValue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stock_value_params
      params.require(:stock_value).permit(:ticker)
    end
end
