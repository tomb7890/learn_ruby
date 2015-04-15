# -*- coding: utf-8 -*-

def ftoc(farenheit)
  # (°F - 32) x 5/9 =
  (( farenheit - 32 )  * 5.0 / 9.0 )
end


def ctof(celsius)
  # Celsius to Fahrenheit formula: (°C × 9/5) + 32 = °F or in plain
  # English, Multiple by 9, then divide by 5, then
  # add 32.
  f = (celsius * 9.0 / 5.0) + 32
  f
end
