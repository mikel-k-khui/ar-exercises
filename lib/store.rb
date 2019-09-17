class Store < ActiveRecord::Base
  has_many :employees, :dependent => :restrict_with_error

  # Stores must always have a name that is a minimum of 3 characters
  validates :name, length: { minimum: 3 }
  
  # Stores have an annual_revenue that is a number (integer) that must be 0 or more
  validates :annual_revenue, numericality: { only_integer: true, greater_than: 0 }
  
  validate :mens_or_womens

  # BONUS: Stores must carry at least one of the men's or women's apparel (hint: use a custom validation method - don't use a Validator class)  
  def mens_or_womens
    if (mens_apparel == false && womens_apparel == false) || mens_apparel == nil || womens_apparel == nil
      errors.add(:mens_apparel, "can't have both mens and womens apparels empty")
      errors.add(:womens_apparel, "can't have both mens and womens apparels empty")
    end
  end
  
end
