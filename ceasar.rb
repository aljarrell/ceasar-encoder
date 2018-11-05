def encoder(string)
  return string.to_s.tr('a-u, v-z, A-U, V-Z, 0-4, 5-9', 'f-z, a-e, F-Z, A-E, 5-9, 0-4')
end
