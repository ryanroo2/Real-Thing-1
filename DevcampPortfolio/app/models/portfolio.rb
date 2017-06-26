class Portfolio < ApplicationRecord
  include Placeholder
  validates_presence_of :title, :main_image, :body, :thumb_image
  
  def self.angular
    where(subtitle: 'Angular')
  end
  
  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }

  after_initialize :set_defaults
  
  def set_deafults
    self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
    self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')
  end
end