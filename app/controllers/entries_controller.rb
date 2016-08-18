class EntriesController < ApplicationController
  before_action :set_feed, only: :index


  def index
    @entries = Entry.all.order('published desc')
   @buzzposts = Entry.where(:feed_id => 1).order('published desc').limit(10)
   @thoughts = Entry.where(:feed_id => 2).order('published desc').limit(10)
   @chives = Entry.where(:feed_id => 3).order('published desc').limit(10)
   @ups = Entry.where(:feed_id => 4).order('published desc').limit(10)
  end

  def show
    @entry = Entry.find(params[:id])
  end

  private
  def set_feed
   
  end
end
