class Establishment < ActiveRecord::Base
  include PgSearch
  validates :name, presence: true
  validates :address, presence: true
  validates :id_places, presence: true
  has_many :ratings

  pg_search_scope :search_by_id, :against => :id_places
end
