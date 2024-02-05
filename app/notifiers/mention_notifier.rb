class MentionNotifier < Event
  notification_methods do
    def message
      "Somebody mentioned you"
    end

    def url
      {recipient_id: recipient_id}
    end
  end
end