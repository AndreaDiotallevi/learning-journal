class String
  
  def get_middle
    return self[(self.length / 2).round] if self.length % 2 == 1
    self[(self.length / 2).round - 1, 2]
  end

end