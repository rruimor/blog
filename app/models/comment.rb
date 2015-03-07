class Comment < ActiveRecord::Base
  validates_presence_of :body
  belongs_to :post

  def author
    self.name.blank? ? "Anonymous" : self.name
  end
end
