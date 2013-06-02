class LikesController < ApplicationController


  before_filter :signed_in_user

  def new
    @like = Comment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @like }
    end
  end

  # GET /comments/1/edit
  def edit
    @like = Comment.find(params[:id])
  end

  # POST /comments
  # POST /comments.json

  def create
    @resource = Resource.find(params[:resource_id])
    @like = @resource.likes.build(params[:like])
    @like.user_id = current_user.id

    # @comment = current_user.comments.build(:resource => @resource)
    respond_to do |format|
      if @like.save
        format.html { redirect_to(@resource, :notice => 'Comment was successfully created.') }
        format.xml  { render :xml => @resource, :status => :created, :location => @resource }
        format.js
      else
        format.html { redirect_to(@resource, :notice =>
            'Comment could not be saved. Please fill in all fields')}
        format.xml  { render :xml => @like.errors, :status => :unprocessable_entity }
      end
    end
  end
end