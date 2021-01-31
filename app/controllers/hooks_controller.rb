class HooksController < ApplicationController
  skip_before_action :verify_authenticity_token

  def get
    ActionCable.server.broadcast(
      'main_channel',
      method: :GET,
      params: params
    )
  end

  def post
    ActionCable.server.broadcast(
      'main_channel',
      method: :POST,
      params: params
    )
  end
end
