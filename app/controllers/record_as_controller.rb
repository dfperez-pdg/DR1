class RecordAsController < ApplicationController
  before_action :set_record_a, only: [:show, :edit, :update, :destroy]

  # GET /record_as
  # GET /record_as.json
  def index
    @record_as = RecordA.all
  end

  # GET /record_as/1
  # GET /record_as/1.json
  def show
  end

  # GET /record_as/new
  def new
    @record_a = RecordA.new
  end

  # GET /record_as/1/edit
  def edit
  end

  # POST /record_as
  # POST /record_as.json
  def create
    @record_a = RecordA.new(record_a_params)

    respond_to do |format|
      if @record_a.save
        format.html { redirect_to @record_a, notice: 'Record a was successfully created.' }
        format.json { render :show, status: :created, location: @record_a }
      else
        format.html { render :new }
        format.json { render json: @record_a.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /record_as/1
  # PATCH/PUT /record_as/1.json
  def update
    respond_to do |format|
      if @record_a.update(record_a_params)
        format.html { redirect_to @record_a, notice: 'Record a was successfully updated.' }
        format.json { render :show, status: :ok, location: @record_a }
      else
        format.html { render :edit }
        format.json { render json: @record_a.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /record_as/1
  # DELETE /record_as/1.json
  def destroy
    @record_a.destroy
    respond_to do |format|
      format.html { redirect_to record_as_url, notice: 'Record a was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_record_a
      @record_a = RecordA.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def record_a_params
      params.require(:record_a).permit(:attr1, :attr2, :attr3, :attr4, :attr5)
    end
end
