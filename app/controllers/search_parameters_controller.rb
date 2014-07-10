class SearchParametersController < ApplicationController
  before_action :set_search_parameter, only: [:show, :edit, :update, :destroy]

  # GET /search_parameters
  # GET /search_parameters.json
  def index
    @search_parameters = SearchParameter.all
  end

  def about
  end

  # GET /search_parameters/1
  # GET /search_parameters/1.json
  def show
  end

  # GET /search_parameters/new
  def new
    @search_parameter = SearchParameter.new
  end

  # GET /search_parameters/1/edit
  def edit
  end

  # POST /search_parameters
  # POST /search_parameters.json
  def create
    @search_parameter = SearchParameter.new(search_parameter_params)

    respond_to do |format|
      if @search_parameter.save
        format.html { redirect_to @search_parameter, notice: 'Search parameter was successfully created.' }
        format.json { render :show, status: :created, location: @search_parameter }
      else
        format.html { render :new }
        format.json { render json: @search_parameter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /search_parameters/1
  # PATCH/PUT /search_parameters/1.json
  def update
    respond_to do |format|
      if @search_parameter.update(search_parameter_params)
        format.html { redirect_to @search_parameter, notice: 'Search parameter was successfully updated.' }
        format.json { render :show, status: :ok, location: @search_parameter }
      else
        format.html { render :edit }
        format.json { render json: @search_parameter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /search_parameters/1
  # DELETE /search_parameters/1.json
  def destroy
    @search_parameter.destroy
    respond_to do |format|
      format.html { redirect_to search_parameters_url, notice: 'Search parameter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_search_parameter
      @search_parameter = SearchParameter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def search_parameter_params
      params[:search_parameter]
    end
end
