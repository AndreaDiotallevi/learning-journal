class App

  def tenminuteswalk(array)
    return false if array.length != 10
    n_count = 0
    s_count = 0
    array.each do |char|
      n_count += 1 if char == 'n'
      s_count += 1 if char == 's'
    end
    return true if n_count == s_count
    false
  end

end