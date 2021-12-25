class MatchesController < ApplicationController
  before_action :set_match, only: %i[ show edit update destroy ]

  def index
    @matches = Match.all
  end

  def show
  end

  def new
    @match = Match.new
    2.times do
      team = @match.teams.build
    end
  end

  def edit
  end

  def create
    @match = Match.new(match_params)

    respond_to do |format|
      if @match.save
        format.html { redirect_to match_url(@match), notice: "Match was successfully created." }
        format.json { render :show, status: :created, location: @match }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @match.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @match.update(match_params)
        format.html { redirect_to match_url(@match), notice: "Match was successfully updated." }
        format.json { render :show, status: :ok, location: @match }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @match.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @match.destroy

    respond_to do |format|
      format.html { redirect_to matches_url, notice: "Match was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

    def set_match
      @match = Match.find(params[:id])
    end

    def match_params
      params.require(:match).permit(:title, :start_date, teams_attributes: [:member_id, :score, :date])
    end
end
