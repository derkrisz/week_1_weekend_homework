def pet_shop_name(name)
  return name[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, amount)
  pet_shop[:admin][:total_cash] += amount
end

def pets_sold(pet_shop)
  pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, num)
  return pet_shop[:admin][:pets_sold] += num #how to call previous function?
end

def stock_count(pet_shop)
  return pet_shop[:pets].count
end

def pets_by_breed(pet_shop, breed)
  result_pets = []
  for pet in pet_shop[:pets]
    if pet[:breed] == breed
      result_pets.push(pet)
    end
  end
  return result_pets
end

def find_pet_by_name(pet_shop, name)
result_name = nil
  for pet in pet_shop[:pets]
    if pet[:name] == name
      return pet
    end
  end
  return result_name
end

def remove_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
      pet_shop[:pets].delete(pet)  #test passes but not sure if good
    end
  end
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets] << new_pet
end

def customer_pet_count(customers)
  customers[:pets].count
end
