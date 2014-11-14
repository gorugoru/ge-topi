class GetopisController < ApplicationController
  before_action :set_getopi, only: [:show, :edit, :update, :destroy]

  # GET /getopis
  # GET /getopis.json
  def index
    @getopis = Getopi.all
  end

  # GET /getopis/1
  # GET /getopis/1.json
  def show
  end

  # GET /getopis/new
  def new
    @getopi = Getopi.new
  end

  # GET /getopis/1/edit
  def edit
  end

  # POST /getopis
  # POST /getopis.json
  def create
    @getopi = Getopi.new(getopi_params)

    respond_to do |format|
      if @getopi.save
        format.html { redirect_to @getopi, notice: 'Getopi was successfully created.' }
        format.json { render :show, status: :created, location: @getopi }
      else
        format.html { render :new }
        format.json { render json: @getopi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /getopis/1
  # PATCH/PUT /getopis/1.json
  def update
    respond_to do |format|
      if @getopi.update(getopi_params)
        format.html { redirect_to @getopi, notice: 'Getopi was successfully updated.' }
        format.json { render :show, status: :ok, location: @getopi }
      else
        format.html { render :edit }
        format.json { render json: @getopi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /getopis/1
  # DELETE /getopis/1.json
  def destroy
    @getopi.destroy
    respond_to do |format|
      format.html { redirect_to getopis_url, notice: 'Getopi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_getopi
      @getopi = Getopi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def getopi_params
      params.require(:getopi).permit(:title, :description)
    end
end
