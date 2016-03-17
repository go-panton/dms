class GmcsController < ApplicationController
  def index
  	sql = "SELECT GRAPHDESC FROM graph"
  	@workspaces = ActiveRecord::Base.connection.execute(sql)
  end
end
