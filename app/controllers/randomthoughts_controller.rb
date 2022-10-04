class RandomthoughtsController < ApplicationController
  before_action :set_randomthought, only: %i[ show edit update destroy ]

  # GET /randomthoughts or /randomthoughts.json
  def index
    @randomthoughts = Randomthought.all
  end

  # GET /randomthoughts/1 or /randomthoughts/1.json
  def show
  end

  # GET /randomthoughts/new
  def new
    @randomthought = Randomthought.new
  end

  # GET /randomthoughts/1/edit
  def edit
  end

  # POST /randomthoughts or /randomthoughts.json
  def create
    @randomthought = Randomthought.new(randomthought_params)

    respond_to do |format|
      if @randomthought.save
        format.html { redirect_to randomthought_url(@randomthought), notice: "Randomthought was successfully created." }
        format.json { render :show, status: :created, location: @randomthought }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @randomthought.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /randomthoughts/1 or /randomthoughts/1.json
  def update
    respond_to do |format|
      if @randomthought.update(randomthought_params)
        format.html { redirect_to randomthought_url(@randomthought), notice: "Randomthought was successfully updated." }
        format.json { render :show, status: :ok, location: @randomthought }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @randomthought.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /randomthoughts/1 or /randomthoughts/1.json
  def destroy
    @randomthought.destroy

    respond_to do |format|
      format.html { redirect_to randomthoughts_url, notice: "Randomthought was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_randomthought
      @randomthought = Randomthought.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def randomthought_params
      params.require(:randomthought).permit(:content, :user_id)
    end
end
