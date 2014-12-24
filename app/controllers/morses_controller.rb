class MorsesController < ApplicationController
  before_action :set_morse, only: [:show, :edit, :update, :destroy]

  # GET /morses
  # GET /morses.json
  def index
    @morses = Morse.all
  end

  # GET /morses/1
  # GET /morses/1.json
  def show
  end

  # GET /morses/new
  def new
    @morse = Morse.new
  end

  # GET /morses/1/edit
  def edit
  end

  # POST /morses
  # POST /morses.json
  def create
    @morse = Morse.new(morse_params)

    respond_to do |format|
      if @morse.save
        format.html { redirect_to @morse, notice: 'Morse was successfully created.' }
        format.json { render :show, status: :created, location: @morse }
      else
        format.html { render :new }
        format.json { render json: @morse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /morses/1
  # PATCH/PUT /morses/1.json
  def update
    respond_to do |format|
      if @morse.update(morse_params)
        format.html { redirect_to @morse, notice: 'Morse was successfully updated.' }
        format.json { render :show, status: :ok, location: @morse }
      else
        format.html { render :edit }
        format.json { render json: @morse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /morses/1
  # DELETE /morses/1.json
  def destroy
    @morse.destroy
    respond_to do |format|
      format.html { redirect_to morses_url, notice: 'Morse was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_morse
      @morse = Morse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def morse_params
      params.require(:morse).permit(:name, :message)
    end
end
