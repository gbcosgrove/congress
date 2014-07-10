class ContributionsController < ApplicationController
  before_action :set_contribution, only: [:show, :edit, :update, :destroy]

  # GET /contributions
  # GET /contributions.json
  def index
    redirect_to create
    # if !@contributions == nil
    #   @contributions
    # end
  end

  # GET /contributions/1
  # GET /contributions/1.json
  def show
  end

  # GET /contributions/new
  def new
    @contributions = Sunlight::Influence::ItemizedSearch.campaign_contributions(contribution_params)
  end

  # GET /contributions/1/edit
  def edit
  end

  # POST /contributions
  # POST /contributions.json
  def create
    @contribution = Sunlight::Influence::ItemizedSearch.campaign_contributions(contribution_params)

    # respond_to do |format|
    #   if @contribution.save
    #     format.html { redirect_to @contribution, notice: 'Contribution was successfully created.' }
    #     format.json { render :show, status: :created, location: @contribution }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @contribution.errors, status: :unprocessable_entity }
    #   end
    end
  end

  # PATCH/PUT /contributions/1
  # PATCH/PUT /contributions/1.json
  def update
    respond_to do |format|
      if @contribution.update(contribution_params)
        format.html { redirect_to @contribution, notice: 'Contribution was successfully updated.' }
        format.json { render :show, status: :ok, location: @contribution }
      else
        format.html { render :edit }
        format.json { render json: @contribution.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contributions/1
  # DELETE /contributions/1.json
  def destroy
    @contribution.destroy
    respond_to do |format|
      format.html { redirect_to contributions_url, notice: 'Contribution was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contribution
      options = {}
      @contributions = Sunlight::Influence::ItemizedSearch.campaign_contributions(options)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contribution_params
      params[:contributions]
    end
end
