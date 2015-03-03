class RecordBsController < ApplicationController
  before_action :set_record_b, only: [:show, :edit, :update, :destroy]

  # GET /record_bs
  # GET /record_bs.json
  def index
    @record_bs = RecordB.all
  end

  # GET /record_bs/1
  # GET /record_bs/1.json
  def show
  end

  # GET /record_bs/new
  def new
    @record_b = RecordB.new
  end

  # GET /record_bs/1/edit
  def edit
  end

  # POST /record_bs
  # POST /record_bs.json
  def create
    @record_b = RecordB.new(record_b_params)

    respond_to do |format|
      if @record_b.save
        format.html { redirect_to @record_b, notice: 'Record b was successfully created.' }
        format.json { render :show, status: :created, location: @record_b }
      else
        format.html { render :new }
        format.json { render json: @record_b.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /record_bs/1
  # PATCH/PUT /record_bs/1.json
  def update
    respond_to do |format|
      if @record_b.update(record_b_params)
        format.html { redirect_to @record_b, notice: 'Record b was successfully updated.' }
        format.json { render :show, status: :ok, location: @record_b }
      else
        format.html { render :edit }
        format.json { render json: @record_b.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /record_bs/1
  # DELETE /record_bs/1.json
  def destroy
    @record_b.destroy
    respond_to do |format|
      format.html { redirect_to record_bs_url, notice: 'Record b was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_record_b
      @record_b = RecordB.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def record_b_params
      params.require(:record_b).permit(:attr1, :attr2, :attr3, :attr4, :attr5)
    end
end
