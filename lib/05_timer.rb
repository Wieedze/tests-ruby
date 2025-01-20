def time_string (seconde)
  minute , seconde = seconde.divmod(60)
  heure , minute = minute.divmod(60)

'%02d:%02d:%02d' % [heure, minute, seconde]
end 