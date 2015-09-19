class Article < ActiveRecord::Base
    has_many :comments, dependent: :destroy
    #dependent: :destroy #Удаление связанных объектов (из бд Comment)
    
    validates :title, presence: true
    validates :text, presence: true

    def subject
      title
    end

    def last_comment
      comments.last
    end
end
