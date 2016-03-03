class NotificationOffer < ActiveRecord::Base
belongs_to :notifier, :class_name=>'User', :foreign_key=>'notifier_id'
belongs_to :notifiee, :class_name=>'User', :foreign_key=>'notifiee_id'
belongs_to :product
belongs_to :user
belongs_to :Oauth
end
