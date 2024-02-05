class Event < ApplicationRecord
  has_many :notifications

  def self.inherited(notifier)
    notifier.const_set :Notification, Class.new(::Notification)
  end

  def self.notification_methods(&block)
    const_get(:Notification).class_eval(&block)
  end
end
