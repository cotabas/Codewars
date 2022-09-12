def validate_pin(pin)
  pin.delete! "\n"
  pin.match(/^\d{4}$|^\d{6}$/).nil? ? false : true
end
