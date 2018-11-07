# def encoder(string)
#   return string.to_s.tr('a-u, v-z, A-U, V-Z, 0-4, 5-9', 'f-z, a-e, F-Z, A-E, 5-9, 0-4')
# end
#
# def decoder(string)
#   return string.to_s.tr('f-z, a-e, F-Z, A-E, 5-9, 0-4', 'a-u, v-z, A-U, V-Z, 0-4, 5-9')
# end

# def daily_encoder(message, day)
#   #return message.to_s.tr('a-zA-Z',[*"a".."z", *"A".."Z"].rotate(day).join).to_s
# end

def daily_encoder(message, day)
  #Transforming each character into it's ASCII number
  transform = message.chars.map{ |x| x.ord}
  #p transform
  arr = Array.new
  #iterating over the transform array and adding variable v to the arr array
  transform.each do |v|
    #if capital letter
    if v >= 65 && v <= 90 ###
      if day + v > 90 #if it goes past Z
        temp = (day + v) - 90
        p temp
        temp += 65
        arr << temp
      else
        arr << v + day
      end
    elsif v >= 97 && v <= 122 #if lowercase letter
      if day + v > 122 #if it goes past z ###
        temp = (day + v) - 122
        p temp
        temp += 97
        arr << temp
      else
        arr << v + day
      end
    else
      arr << v   #if its not a capital or lowercase it will add that character
    end
  end
#p arr
  #changing the ASCII numbers back into characters
  character = arr.map { |c| c.chr}.join
#  p character
end


def daily_decoder(message, day)
  transform = message.chars.map { |x| x.ord}
  arr = arr.new
  transform.each do |v|
    if v >= 65 && v <= 90 ###
      if day + v > 90 #if it goes past Z
        temp = (day + v) - 90
        p temp
        temp += 65
        arr << temp
      else
        arr << v + day
      end
    elsif v >= 97 && v <= 122 #if lowercase letter
      if day + v > 122 #if it goes past z ###
        temp = (day + v) - 122
        p temp
        temp += 97
        arr << temp
      else
        arr << v + day
      end
    else
      arr << v   #if its not a capital or lowercase it will add that character
    end
  end 
end
