class SellerBuyersController < ApplicationController
  before_action :set_seller_buyer, only: [:show, :edit, :update, :destroy]

  # GET /seller_buyers
  # GET /seller_buyers.json
  def index
    @seller_buyers = SellerBuyer.all
  end

  # GET /seller_buyers/1
  # GET /seller_buyers/1.json
  def show
  end

  # GET /seller_buyers/new
  def new
    @seller_buyer = SellerBuyer.new
  end

  # GET /seller_buyers/1/edit
  def edit
  end

  # POST /seller_buyers
  # POST /seller_buyers.json
  def create
    @seller_buyer = SellerBuyer.new(seller_buyer_params)

    respond_to do |format|
      if @seller_buyer.save
        format.html { redirect_to @seller_buyer, notice: 'Seller buyer was successfully created.' }
        format.json { render :show, status: :created, location: @seller_buyer }
      else
        format.html { render :new }
        format.json { render json: @seller_buyer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seller_buyers/1
  # PATCH/PUT /seller_buyers/1.json
  def update
    respond_to do |format|
      if @seller_buyer.update(seller_buyer_params)
        format.html { redirect_to @seller_buyer, notice: 'Seller buyer was successfully updated.' }
        format.json { render :show, status: :ok, location: @seller_buyer }
      else
        format.html { render :edit }
        format.json { render json: @seller_buyer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seller_buyers/1
  # DELETE /seller_buyers/1.json
  def destroy
    @seller_buyer.destroy
    respond_to do |format|
      format.html { redirect_to seller_buyers_url, notice: 'Seller buyer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seller_buyer
      @seller_buyer = SellerBuyer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seller_buyer_params
      params.require(:seller_buyer).permit(:user_id, :product_id)
    end
end
