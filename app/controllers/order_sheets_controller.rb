class OrderSheetsController < ApplicationController
  before_action :set_order_sheet, only: [:show, :edit, :update, :destroy]

  # GET /order_sheets
  # GET /order_sheets.json
  def index
    @order_sheets = OrderSheet.all
  end

  # GET /order_sheets/1
  # GET /order_sheets/1.json
  def show
  end

  # GET /order_sheets/new
  def new
    @order_sheet = OrderSheet.new
  end

  # GET /order_sheets/1/edit
  def edit
  end

  # POST /order_sheets
  # POST /order_sheets.json
  def create
    @order_sheet = OrderSheet.new(order_sheet_params)

    respond_to do |format|
      if @order_sheet.save
        format.html { redirect_to @order_sheet, notice: 'Order sheet was successfully created.' }
        format.json { render :show, status: :created, location: @order_sheet }
      else
        format.html { render :new }
        format.json { render json: @order_sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_sheets/1
  # PATCH/PUT /order_sheets/1.json
  def update
    respond_to do |format|
      if @order_sheet.update(order_sheet_params)
        format.html { redirect_to @order_sheet, notice: 'Order sheet was successfully updated.' }
        format.json { render :show, status: :ok, location: @order_sheet }
      else
        format.html { render :edit }
        format.json { render json: @order_sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_sheets/1
  # DELETE /order_sheets/1.json
  def destroy
    @order_sheet.destroy
    respond_to do |format|
      format.html { redirect_to order_sheets_url, notice: 'Order sheet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_sheet
      @order_sheet = OrderSheet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_sheet_params
      params.require(:order_sheet).permit(:order_template_id, :order_day)
    end
end
