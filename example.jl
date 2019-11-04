using Dates
using OffsetArrays

function meetup(year::Int, month::Int, week::String, day_of_week::String)
    # Sunday is day zero of the week
    days_of_week = OffsetVector(["Sunday", "Monday", "Tuesday", "Wednesday",
                                 "Thursday", "Friday", "Saturday"], 0:6)

    ordinals = OffsetVector(["teenth", "1st", "2nd", "3rd", "4th",
                             "5th", "last"], 0:6)




    i_dow_input = indexof(day_of_week, days_of_week)
    i_ord = indexof(week, ordinals)
    if i_ord ∈ range(1, stop=5)
        # index of the the day of the week on the 1ˢᵗ of the month
        diff_days = Date(year, month, 1) - Date(2000, 1, 2)
        i_dow_1ˢᵗ = Dates.value(diff_days) % 7

        Δ = i_dow_input - i_dow_1ˢᵗ
        if Δ ≥ 0
            day = 1 + 7*(i_ord - 1) + Δ
        else
            day = 1 + 7*(i_ord) + Δ
        end

    elseif i_ord == 0
        diff_days = Date(year, month, 13) - Date(2000, 1, 2)
        i_dow_13th = Dates.value(diff_days) % 7
        Δ = i_dow_input - i_dow_13th
        Δ ≥ 0    ?    day = 13 + Δ    :    day = 20 + Δ


    elseif i_ord == 6 # last
        if month ∈ [1,3,5,7,8,10,12]
            last = 31
        elseif month ∈ [4,6,9,11]
            last = 30
        else
            if year % 400 == 0
                last = 29
            elseif year % 100 == 0
                last = 28
            elseif year % 4 == 0
                last = 29
            else
                last = 28
            end
        end


        diff_days = Date(year, month, last) - Date(2000, 1, 2)
        i_dow_last = Dates.value(diff_days) % 7
        Δ = i_dow_input - i_dow_last
        Δ > 0    ?    day = last - 7 + Δ    :    day = last + Δ


    else
        throw(ErrorException("The day does not exist."))
    end

    date_valid = true
    try
        Date(year, month, day)
    catch
        date_valid = false
    end

    if date_valid
        return Date(year, month, day)
    else
        throw(ErrorException("The day is not valid."))
    end
end



function indexof(val, arr::OffsetVector)
# For zero-based array
    i = 0
    while i < length(arr)
        if arr[i] == val;    return i;    end
        i+=1
    end

    throw(ValueError("val not in arr!"))
end
