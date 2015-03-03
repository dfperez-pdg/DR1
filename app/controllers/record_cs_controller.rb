class RecordCsController < ApplicationController
  before_action :set_record_c, only: [:show, :edit, :update, :destroy]

  # GET /record_cs
  # GET /record_cs.json
  def index
    @record_cs = RecordC.all
  end

  # GET /record_cs/1
  # GET /record_cs/1.json
  def show
  end

  # GET /record_cs/new
  def new
    @record_c = RecordC.new
  end

  # GET /record_cs/1/edit
  def edit
  end

  # POST /record_cs
  # POST /record_cs.json
  def create
    @record_c = RecordC.new(record_c_params)

    respond_to do |format|
      if @record_c.save
        format.html { redirect_to @record_c, notice: 'Record c was successfully created.' }
        format.json { render :show, status: :created, location: @record_c }
      else
        format.html { render :new }
        format.json { render json: @record_c.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /record_cs/1
  # PATCH/PUT /record_cs/1.json
  def update
    respond_to do |format|
      if @record_c.update(record_c_params)
        format.html { redirect_to @record_c, notice: 'Record c was successfully updated.' }
        format.json { render :show, status: :ok, location: @record_c }
      else
        format.html { render :edit }
        format.json { render json: @record_c.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /record_cs/1
  # DELETE /record_cs/1.json
  def destroy
    @record_c.destroy
    respond_to do |format|
      format.html { redirect_to record_cs_url, notice: 'Record c was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_record_c
      @record_c = RecordC.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def record_c_params
      params.require(:record_c).permit(:attr1, :attr2, :attr3, :attr4, :attr5, :attr6)
    end
end
