class OrderTemplatesController < ApplicationController
  before_action :set_order_template, only: [:show, :edit, :update, :destroy]

  # GET /order_templates
  # GET /order_templates.json
  def index
    @order_templates = OrderTemplate.all
  end

  # GET /order_templates/1
  # GET /order_templates/1.json
  def show
  end

  # GET /order_templates/new
  def new
    @order_template = OrderTemplate.new(vendor_id: params[:vendor_id])
  end

  # GET /order_templates/1/edit
  def edit
  end

  def clone
    order_day = params[:order_day]
    date = Date.new(order_day["Order Day(1i)"].to_i, order_day["Order Day(2i)"].to_i, order_day["Order Day(3i)"].to_i)
    order_date = date.to_s

    @order_sheet = OrderSheet.create(order_template_id: params[:order_template_id], order_day: order_date)
    redirect_to order_sheets_path
  end

  # POST /order_templates
  # POST /order_templates.json
  def create
    @order_template = OrderTemplate.new(vendor_id: params[:vendor_id])

    respond_to do |format|
      if @order_template.save
        format.html { redirect_to vendor_path(params[:vendor_id]), notice: 'Order template was successfully created.' }
        format.json { render :show, status: :created, location: @order_template }
      else
        format.html { render :new }
        format.json { render json: @order_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_templates/1
  # PATCH/PUT /order_templates/1.json
  def update
    respond_to do |format|
      if @order_template.update(vendor_id: params[:vendor_id])
        format.html { redirect_to vendor_path(params[:vendor_id]), notice: 'Order template was successfully updated.' }
        format.json { render :show, status: :ok, location: @order_template }
      else
        format.html { render :edit }
        format.json { render json: @order_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_templates/1
  # DELETE /order_templates/1.json
  def destroy
    @order_template.destroy
    respond_to do |format|
      format.html { redirect_to vendor_path(params[:vendor_id]), notice: 'Order template was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_template
      @order_template = OrderTemplate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_template_params
      params[:order_template]
    end
end
