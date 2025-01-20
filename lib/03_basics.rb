
def who_is_bigger(a,b,c)
  return "nil detected" if [a, b, c].include?(nil)
  max_value =[a,b,c].max
  if max_value == a
    return "a is bigger"
  elsif max_value == b
    return "b is bigger"
  else
    return "c is bigger"
  end
end 

def reverse_upcase_noLTA(str)
  str.reverse.upcase.delete("LTA")
end 

def array_42 (array)
  array.include?(42) 
end
def magic_array(array)

  array.flatten.sort.map{|i|i*2}.reject{ |num| num % 3 == 0 }.uniq

end 
