class Post < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	validates :title, presence: true, length: {minimum: 5}
	validates :body, presence: true

  def formatted_text
    Kramdown::Document.new(body).to_html.html_safe
  end
end
