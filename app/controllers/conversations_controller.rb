class ConversationsController < ApplicationController
  before_action :set_conversation_and_chapter, only: [:show, :edit, :update, :destroy]
  before_action :set_group
  # GET /conversations
  # GET /conversations.json
  def index
    @conversations = @group.conversations
  end

  # GET /conversations/1
  # GET /conversations/1.json
  def show
    @messages = @conversation.messages.reverse
    @new_message = Message.new(
      author_name: "Utilisateur alpha",
      author_img: "user.png")
  end

  # GET /conversations/new
  def new
    @conversation = Conversation.new
  end

  # GET /conversations/1/edit
  def edit
  end

  # POST /conversations
  # POST /conversations.json
  def create
    @conversation = Conversation.new(conversation_params)

    respond_to do |format|
      if @conversation.save
        format.html { redirect_to @conversation, notice: 'Conversation was successfully created.' }
        format.json { render :show, status: :created, location: @conversation }
      else
        format.html { render :new }
        format.json { render json: @conversation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /conversations/1
  # PATCH/PUT /conversations/1.json
  def update
    respond_to do |format|
      if @conversation.update(conversation_params)
        format.html { redirect_to @conversation, notice: 'Conversation was successfully updated.' }
        format.json { render :show, status: :ok, location: @conversation }
      else
        format.html { render :edit }
        format.json { render json: @conversation.errors, status: :unprocessable_entity }
      end
    end
  end

  def add_like
    @conversation = Conversation.find(params[:conversation_id])
    likes = @conversation.likes
    @conversation.update!(
      likes: likes + 1)
    redirect_to group_conversation_path(@group, @conversation)
  end

  # DELETE /conversations/1
  # DELETE /conversations/1.json
  def destroy
    @conversation.destroy
    respond_to do |format|
      format.html { redirect_to conversations_url, notice: 'Conversation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_conversation_and_chapter
      @conversation = Conversation.find(params[:id])
      @chapter = @conversation.chapter
    end

    def set_group
      @group = Group.find(params[:group_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def conversation_params
      params.require(:conversation).permit(:name, :likes)
    end
end
