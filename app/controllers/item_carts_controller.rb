class ItemCartsController < ApplicationController
  before_action :set_item_cart, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!
  # GET /item_carts
  # GET /item_carts.json
  def index
    @item_carts = ItemCart.all
  end

  # GET /item_carts/1
  # GET /item_carts/1.json
  def show
  end

  # GET /item_carts/new
  def new
    if Cart.find_by(user_id: current_user.id).nil?
      @cart = Cart.new
      @cart.cart_id = @cart.id
      @cart.user_id = current_user.id
      @cart.save
    else
      @cart = Cart.find_by(user_id: current_user.id ).id
    end
    @item_cart = ItemCart.new
  end

  # GET /item_carts/1/edit
  def edit
  end

  # POST /item_carts
  # POST /item_carts.json
  def create
    
    @item_cart = ItemCart.new(item_cart_params)

    respond_to do |format|
      if @item_cart.save
        puts 'you request has been accepted'
        format.html { redirect_to catigories_path, notice: 'Item Was added to your cart successfully.' }
        # format.json { render :show, status: :created, location: @item_cart }
      else
        format.html { render :new }
        format.json { render json: @item_cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /item_carts/1
  # PATCH/PUT /item_carts/1.json
  def update
    respond_to do |format|
      if @item_cart.update(item_cart_params)
        format.html { redirect_to catigories_path, notice: 'Item cart was successfully added to your cart.' }
        format.json { render :show, status: :ok, location: @item_cart }
      else
        format.html { render :edit }
        format.json { render json: @item_cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /item_carts/1
  # DELETE /item_carts/1.json
  def destroy
    @item_cart.destroy
    respond_to do |format|
      format.html { redirect_to carts_path, notice: 'Item cart was successfully Removed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item_cart
      @item_cart = ItemCart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_cart_params
      params.require(:item_cart).permit(:item_id, :cart_id, :number_count)
    end
end
