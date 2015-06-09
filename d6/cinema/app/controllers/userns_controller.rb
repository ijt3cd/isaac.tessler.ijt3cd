class UsernsController < ApplicationController
  before_action :set_usern, only: [:show, :edit, :update, :destroy]

  # GET /userns
  # GET /userns.json
  def index
    @userns = Usern.all
  end

  # GET /userns/1
  # GET /userns/1.json
  def show
  end

  # GET /userns/new
  def new
    @usern = Usern.new
  end

  # GET /userns/1/edit
  def edit
  end

  # POST /userns
  # POST /userns.json
  def create
    @usern = Usern.new(usern_params)

    respond_to do |format|
      if @usern.save
        format.html { redirect_to @usern, notice: 'Usern was successfully created.' }
        format.json { render :show, status: :created, location: @usern }
      else
        format.html { render :new }
        format.json { render json: @usern.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /userns/1
  # PATCH/PUT /userns/1.json
  def update
    respond_to do |format|
      if @usern.update(usern_params)
        format.html { redirect_to @usern, notice: 'Usern was successfully updated.' }
        format.json { render :show, status: :ok, location: @usern }
      else
        format.html { render :edit }
        format.json { render json: @usern.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userns/1
  # DELETE /userns/1.json
  def destroy
    @usern.destroy
    respond_to do |format|
      format.html { redirect_to userns_url, notice: 'Usern was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usern
      @usern = Usern.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usern_params
      params.require(:usern).permit(:nombre, :location)
    end
end
