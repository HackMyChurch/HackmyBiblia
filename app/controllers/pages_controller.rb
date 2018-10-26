class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_group
  before_action :set_conversation

  def home
  end

  def message_perso
  end

  def message_groupe
  end

  def membre_groupe
  end

  private

  def set_group
    @group = Group.last
  end

  def set_conversation
    @conversation = Conversation.last
  end
end
