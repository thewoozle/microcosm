class TopicsController < ApplicationController
  # GET /topics
  # GET /topics.xml
  def index
    @topics = Topic.all
	
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @topics }
    end
  end
  
  def topic_messages
	@topic = Topic.find (params[:topic_id])
	render :partial=>'topics/show_topic', :locals=>{:messages=>@topic.messages}  
  end
  
  

  # GET /topics/1
  # GET /topics/1.xml
  def show
    @topic = Topic.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @topic }
    end
   
  end

  # GET /topics/new
  # GET /topics/new.xml
  def new
    @topic = Topic.new
	@message = Message.new    
  end

  # GET /topics/1/edit
  def edit
    @topic = Topic.find(params[:id])
  end

  
  
  # POST /topics
  # POST /topics.xml
  def create
    @topic = Topic.new(params[:topic])
    @message = @topic.messages.build(params[:message])
	
    if @topic.save
		#after new topic and message saves, update message with topic id
        @message.messageTopic = @topic.id
		@message.update_attributes(params[:message])
		redirect_to :controller => 'main', :action => 'index'		
    else
        render :action => "new"    
    end
  end

  # PUT /topics/1
  # PUT /topics/1.xml
  def update
    @topic = Topic.find(params[:id])

    respond_to do |format|
      if @topic.update_attributes(params[:topic])
        format.html { redirect_to(@topic, :notice => 'Topic was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @topic.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /topics/1
  # DELETE /topics/1.xml
  def destroy
    @topic = Topic.find(params[:id])
    @topic.destroy

    respond_to do |format|
      format.html { redirect_to(topics_url) }
      format.xml  { head :ok }
    end
  end
end
