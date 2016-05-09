class SponsorshipsController < ApplicationController
  before_action :set_sponsorship, only: [:show, :edit, :update, :destroy]

  # GET /sponsorships
  def index
    @sponsorships = Sponsorship.all
  end

  # GET /sponsorships/1
  def show
  end

  # GET /sponsorships/new
  def new
    @sponsorship = Sponsorship.new
  end

  # GET /sponsorships/1/edit
  def edit
  end

  # POST /sponsorships
  def create
    @sponsorship = Sponsorship.new(sponsorship_params)

    if @sponsorship.save
      redirect_to @sponsorship, notice: 'Sponsorship was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /sponsorships/1
  def update
    if @sponsorship.update(sponsorship_params)
      redirect_to @sponsorship, notice: 'Sponsorship was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /sponsorships/1
  def destroy
    @sponsorship.destroy
    redirect_to sponsorships_url, notice: 'Sponsorship was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sponsorship
      @sponsorship = Sponsorship.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sponsorship_params
      params[:sponsorship]
    end
end
