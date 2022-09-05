def colorful?(number)

  return false if number.instance_of?(String)

  arr = number.digits.reverse

  if arr.length == 1
    return true
  elsif arr.length == 2
    if arr[0] == arr[1]
      return false
    elsif arr[1] == arr[0] * arr[1]
      return false
    else
      return true
    end
  elsif arr.length == 3
    if arr[0] == arr[1]
      return false
    elsif arr[1] == arr[2]
      return false
    elsif arr[2] == arr[0] * arr[1]
      return false
    elsif arr[0] * arr[1] == arr[1] * arr[2]
      return false
    elsif arr[1] * arr[2] == arr[0] * arr[1] * arr[2]
      return false
    else
      return true
    end
  else
    puts "Please add only up to 3 digits"
  end
end

puts colorful?(236)
