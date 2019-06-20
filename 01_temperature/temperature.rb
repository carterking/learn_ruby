def ftoc(temperature)
  x = temperature - 32.0
  y = 5.0 / 9.0
  return x.to_f * y
end

def ctof(temperature)
  x = 9.0 / 5.0
  return temperature.to_f * x.to_f + 32.0
  
end
