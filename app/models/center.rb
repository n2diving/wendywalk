class Center < ActiveRecord::Base

 def self.search(search)
    if search
      q = "%#{search}%"
      where('State || City ILIKE ?',q)
    else
      nil
    end
  end


end
