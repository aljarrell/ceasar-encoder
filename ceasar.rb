def encoder(string)
  return string.to_s.tr('a-u, v-z, A-U, V-Z', 'f-z, a-e, F-Z, A-E')
end
