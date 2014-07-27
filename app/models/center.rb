class Center < ActiveRecord::Base

 def self.search(search)
    if search
      q = "%#{search}%"
      where('State LIKE ?',q)
    else
      scoped
    end
  end


end
