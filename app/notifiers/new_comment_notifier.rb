class NewCommentNotifier < Event
  def message
    "New comment recieved"
  end
end