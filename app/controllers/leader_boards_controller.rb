class LeaderBoardsController < ApplicationController

  def index
  	members_ids = Member.joins(:teams).group('members.id').having("count(teams.id)>=1")
  	@members = Member.where(id: members_ids).includes(:teams).order("teams.score desc").limit(10)
  end
end