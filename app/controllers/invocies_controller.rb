class InvociesController < ApplicationController
  before_action :set_invocy, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!
  # GET /invocies
  # GET /invocies.json
  def index
      @invocies =
       if current_user.admin
         Invocy.all
       else
         Invocy.find_by(user_id: current_user.id)
       end
  end

  # GET /invocies/1
  # GET /invocies/1.json
  def show
  end

  # GET /invocies/new
  def new
    @invocy = Invocy.new
  end

  # GET /invocies/1/edit
  def edit
  end

  # POST /invocies
  # POST /invocies.json
  def create
    @invocy = Invocy.new(invocy_params)

    respond_to do |format|
      if @invocy.save
        format.html { redirect_to @invocy, notice: 'Invocy was successfully created.' }
        format.json { render :show, status: :created, location: @invocy }
      else
        format.html { render :new }
        format.json { render json: @invocy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /invocies/1
  # PATCH/PUT /invocies/1.json
  def update
    respond_to do |format|
      if @invocy.update(invocy_params)
        format.html { redirect_to @invocy, notice: 'Invocy was successfully updated.' }
        format.json { render :show, status: :ok, location: @invocy }
      else
        format.html { render :edit }
        format.json { render json: @invocy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /invocies/1
  # DELETE /invocies/1.json
  def destroy
    @invocy.destroy
    respond_to do |format|
      format.html { redirect_to invocies_url, notice: 'Invocy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_invocy
      @invocy = Invocy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def invocy_params
      params.require(:invocy).permit(:cart_id, :invocice_id, :total_price)
    end
end
