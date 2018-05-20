class Post < ApplicationRecord
    has_many :comments, dependent: :destroy
    #belongs_to :user_id
    cattr_accessor :current_user
    validates :link, :format => URI::regexp(%w(http https)), unless: ->(x) {x.link.blank?}
validates :content, presence: true
validates :content, :length => { :minimum => 10, :maximum => 200}
end