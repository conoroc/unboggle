class CommentsController < ApplicationController
  # GET /comments
  # GET /comments.json

  before_filter :signed_in_user


  def index
    @comments = Comment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @comments }
    end
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
    @comment = Comment.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @comment }
    end
  end

  # GET /comments/new
  # GET /comments/new.json
  def new
    @comment = Comment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @comment }
    end
  end

  # GET /comments/1/edit
  def edit
    @comment = Comment.find(params[:id])
  end

  # POST /comments
  # POST /comments.json

  def create
    @resource = Resource.find(params[:resource_id])
    @comment = @resource.comments.build(params[:comment])
    @comment.user_id = current_user.id

   # @comment = current_user.comments.build(:resource => @resource)
    respond_to do |format|
      if @comment.save
        format.html { redirect_to(@resource, :notice => 'Comment was successfully created.') }
        format.xml  { render :xml => @resource, :status => :created, :location => @resource }
        format.js
      else
        format.html { redirect_to(@resource, :notice =>
            'Comment could not be saved. Please fill in all fields')}
        format.xml  { render :xml => @comment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /comments/1
  # PUT /comments/1.json
  def update
    @comment = Comment.find(params[:id])

    respond_to do |format|
      if @comment.update_attributes(params[:comment])
        format.html { redirect_to @comment, notice: 'Comment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json

  def destroy
    @comment = Comment.find(params[:id])
    @resource = Resource.find(params[:resource_id])
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to(@resource, :notice => 'Comment was successfully deleted.') }
      format.xml  { head :ok }
      format.js
    end
  end


end
