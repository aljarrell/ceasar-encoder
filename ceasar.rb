def encoder(string)
  return string.to_s.tr('a-u, v-z, A-U, V-Z, 0-4, 5-9', 'f-z, a-e, F-Z, A-E, 5-9, 0-4')
end

def decoder(string)
  return string.to_s.tr('f-z, a-e, F-Z, A-E, 5-9, 0-4', 'a-u, v-z, A-U, V-Z, 0-4, 5-9')
end

def daily_encoder(message, day)
  return message.to_s.tr("a-z, A-Z",[*"a".."z", *"A".."Z"].rotate(day).join).to_s
end
