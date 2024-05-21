class Article < ApplicationRecord
    include Visible
    after_initialize :set_defaults
  
    has_many :comments, dependent: :destroy
  
    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }

    def set_defaults
        status = "public"
      end
  end
  