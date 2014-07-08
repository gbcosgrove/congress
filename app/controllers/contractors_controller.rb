class ContractorsController < ApplicationController
  before_action :set_contractor, only: [:show, :edit, :update, :destroy]

  # GET /contractors
  # GET /contractors.json
  def index
    create
  end

  # GET /contractors/1
  # GET /contractors/1.json
  def show

  end

  # GET /contractors/new
  def new
  end

  # GET /contractors/1/edit
  def edit
  end

  # POST /contractors
  # POST /contractors.json
  def create

  end

  # PATCH/PUT /contractors/1
  # PATCH/PUT /contractors/1.json
  def update
  end

  # DELETE /contractors/1
  # DELETE /contractors/1.json
  def destroy

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contractor
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contractor_params
      params[:contractor]
    end
end
