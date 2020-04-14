class CarclassesController < ApplicationController
  before_action :set_carclass, only: [:show, :edit, :update, :destroy]

  # GET /carclasses
  # GET /carclasses.json
  def index
    @carclasses = Carclass.all
  end

  # GET /carclasses/1
  # GET /carclasses/1.json
  def show
  end

  # GET /carclasses/new
  def new
    @carclass = Carclass.new
  end

  # GET /carclasses/1/edit
  def edit
  end

  # POST /carclasses
  # POST /carclasses.json
  def create
    @carclass = Carclass.new(carclass_params)

    respond_to do |format|
      if @carclass.save
        format.html { redirect_to @carclass, notice: 'Carclass was successfully created.' }
        format.json { render :show, status: :created, location: @carclass }
      else
        format.html { render :new }
        format.json { render json: @carclass.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carclasses/1
  # PATCH/PUT /carclasses/1.json
  def update
    respond_to do |format|
      if @carclass.update(carclass_params)
        format.html { redirect_to @carclass, notice: 'Carclass was successfully updated.' }
        format.json { render :show, status: :ok, location: @carclass }
      else
        format.html { render :edit }
        format.json { render json: @carclass.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carclasses/1
  # DELETE /carclasses/1.json
  def destroy
    @carclass.destroy
    respond_to do |format|
      format.html { redirect_to carclasses_url, notice: 'Carclass was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carclass
      @carclass = Carclass.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def carclass_params
      params.require(:carclass).permit(:name)
    end
end
