def rental_car_cost(d)
    d >= 7 ? d*40 - 50 : d >= 3 ? d*40 - 20 : d*40
end
