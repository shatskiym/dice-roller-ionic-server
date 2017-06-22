class DicesController < ApplicationController
  before_action :set_dice, only: [:show, :update, :destroy]

  # GET /dices
  # GET /dices.json
  def index
    @dices = Dice.all
    render json: @dices
  end

  # GET /dices/1
  # GET /dices/1.json
  def show
  end

  # POST /dices
  # POST /dices.json
  def create
    @dice = Dice.new(dice_params)
    if @dice.save
      render json: @dice
    else
      render json: @dice.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dices/1
  # PATCH/PUT /dices/1.json
  def update
    if @dice.update(dice_params)
      render :show, status: :ok, location: @dice
    else
      render json: @dice.errors, status: :unprocessable_entity
    end
  end

  # DELETE /dices/1
  # DELETE /dices/1.json
  def destroy
    @dice.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dice
      @dice = Dice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dice_params
      params.require(:dice).permit(:name, :edges)
    end
end
