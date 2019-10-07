def threed(ints)
    count = 0

    ints.each do |i|
        if i == 3
            count += 1
        end
    end

    (ints.size - 1).times do |n|
        if ints[n] == 3 && ints[n + 1] == 3
            return false
        end
    end
     
    if count == 3
        return true
    end

end

# puts threed([3, 4, 6, 6, 3, 2, 3])

def same_first_last(ints)
    x = ints.size

    if x >= 1 && ints[0] == ints[x - 1]
        return true
    end

    return false
end


# puts same_first_last([1, 2, 3, 4, 2, 1])

def get_sandwich(strg)
    count = 0
    x = 0
    y = 0

    (strg.size - 4).times do |i|
        if strg[i..(i + 4)] == "bread" || strg[i..(i + 4)] == "Bread"
            if count == 0
                x = i + 5
                count += 1
            elsif count > 0
                y = i - 1
                count += 1
            end
        end
    end

    if count < 2
        return ""
    end

    return strg[x..y]


end

# puts get_sandwich("Breadjambread") # -> jam
# puts get_sandwich("breadbreadlettuce")
# puts get_sandwich("breadapplejambread")

def shift_left(list)
    overflow = list[0]
    point = 0

    list.size.times do
        list[point] = list[point + 1]
        point += 1
    end

    list[list.size - 1] = overflow
    
    return list
end

# puts shift_left([1, 2, 3, 4]) #-> 2, 3, 4, 1
# puts shift_left([2, 5, 3, 1]) #-> 5, 3, 1, 2

def can_balance(list)
    if list.size > 0
        if list.size%2 == 0
            x = (list.size / 2)
        else
            return false
        end
    else
        return false
    end

    sum_front = 0
    sum_back = 0
    i = 0

    list.each do
        if i < x
            sum_front = sum_front + list[i]
        elsif i >= x
            sum_back = sum_back + list[i]
        end
        i = i + 1
    end

    if sum_front == sum_back
        return true
    else
        return false
    end

end

# puts can_balance([1, 3, 5, 3, 4, 4])
# puts can_balance([1, 1, 1, 2, 3, 1, 4, 1, 1, 1])
# puts can_balance([])

def count_code(string)
    count = 0

    (string.size - 3).times do |i|
        slice = string[i..(i+3)]
        if slice[0..1] == "co" && slice[3] == "e" || slice[0..1] == "Co" && slice[3] == "e"
            count += 1
        end
    end

    return count
end

# puts count_code("Today I am in core 1 and making code")

def middle_way(list1, list2)

    if list1.size%2 == 1 && list2.size%2 == 1
        x = list1[list1.size / 2]
        y = list2[list2.size / 2]
    end

    return x, y
end

# puts middle_way([1, 5, 3], [1, 4, 2])
# puts middle_way([2, 4, 1, 2, 8], [5, 2, 3])

def either_2_4(list)
    count = 0
    index = 0

    list.each do |i|
        if i == 2 && i == list[index + 1] || i == 4 && i == list[index + 1]
            count += 1
        end
        index = index + 1
    end

    if count == 1
        return true
    end

    return false
end

# puts either_2_4([2, 3, 2, 2, 3])
# puts either_2_4([2, 2, 3, 3, 4, 4])
# puts either_2_4([2, 3, 4, 4, 1])
# puts either_2_4([2, 5, 6, 3, 1])

def max_span(list)

end

def g_happy(strg)

    strg.size.times do |i|
        if strg[i] == "g" && strg[i + 1] == "g" || strg[i] == "g" && strg[i - 1] == "g"
            return true
        end
    end

    return false

end

# puts g_happy("go to the best gg food place")
# puts g_happy('gg boys')

def merge(list1, list2)
    combined_list = list1 + list2

    combined_list.size.times do |i|
        if combined_list[i] > combined_list[i + 1]
            combined_list[i] = combined_list[i + 1]
        end
    end

    return combined_list

end

puts merge([1, 4, 2], [3, 9, 10]) # -> (1, 2, 3, 4, 9, 10)