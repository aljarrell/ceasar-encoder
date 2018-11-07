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
    arr << v + day
  end
#p arr
  #changing the ASCII numbers back into characters
  character = arr.map { |c| c.chr}.join
#  p character
end
