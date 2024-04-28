class StarwarsController < ApplicationController
  before_action :set_starwar, only: %i[ show update destroy ]

  # GET /starwars
  def index
    @starwars = Starwar.all

    render json: @starwars
  end

  # GET /starwars/1
  def show
    render json: @starwar
  end

  # POST /starwars
  def create
    @starwar = Starwar.new(starwar_params)

    if @starwar.save
      render json: @starwar, status: :created, location: @starwar
    else
      render json: @starwar.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /starwars/1
  def update
    if @starwar.update(starwar_params)
      render json: @starwar
    else
      render json: @starwar.errors, status: :unprocessable_entity
    end
  end

  # DELETE /starwars/1
  def destroy
    @starwar.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_starwar
      @starwar = Starwar.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def starwar_params
      params.require(:starwar).permit(:name)
    end
end
