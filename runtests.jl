using Test
using Dates

include("meetup.jl")


# Tests adapted from `problem-specifications//canonical-data.json` @ v1.1.0

println("\n"^2, "-"^60, "\n"^3)

@testset "Monteenth of May 2013." begin
    @test meetup(2013, 5, "teenth", "Monday") == Date(2013, 5, 13)
end
println()

@testset "Monteenth of August 2013." begin
    @test meetup(2013, 8, "teenth", "Monday") == Date(2013, 8, 19)
end
println()

@testset "Monteenth of September 2013." begin
    @test meetup(2013, 9, "teenth", "Monday") == Date(2013, 9, 16)
end
println()

@testset "Tuesteenth of March 2013." begin
    @test meetup(2013, 3, "teenth", "Tuesday") == Date(2013, 3, 19)
end
println()

@testset "Tuesteenth of April 2013." begin
    @test meetup(2013, 4, "teenth", "Tuesday") == Date(2013, 4, 16)
end
println()

@testset "Tuesteenth of August 2013." begin
    @test meetup(2013, 8, "teenth", "Tuesday") == Date(2013, 8, 13)
end
println()

@testset "Wednesteenth of January 2013." begin
    @test meetup(2013, 1, "teenth", "Wednesday") == Date(2013, 1, 16)
end
println()

@testset "Wednesteenth of February 2013." begin
    @test meetup(2013, 2, "teenth", "Wednesday") == Date(2013, 2, 13)
end
println()

@testset "Wednesteenth of June 2013." begin
    @test meetup(2013, 6, "teenth", "Wednesday") == Date(2013, 6, 19)
end
println()

@testset "Thursteenth of May 2013." begin
    @test meetup(2013, 5, "teenth", "Thursday") == Date(2013, 5, 16)
end
println()

@testset "Thursteenth of June 2013." begin
    @test meetup(2013, 6, "teenth", "Thursday") == Date(2013, 6, 13)
end
println()

@testset "Thursteenth of September 2013." begin
    @test meetup(2013, 9, "teenth", "Thursday") == Date(2013, 9, 19)
end
println()

@testset "Friteenth of April 2013." begin
    @test meetup(2013, 4, "teenth", "Friday") == Date(2013, 4, 19)
end
println()

@testset "Friteenth of August 2013." begin
    @test meetup(2013, 8, "teenth", "Friday") == Date(2013, 8, 16)
end
println()

@testset "Friteenth of September 2013." begin
    @test meetup(2013, 9, "teenth", "Friday") == Date(2013, 9, 13)
end
println()

@testset "Saturteenth of February 2013." begin
    @test meetup(2013, 2, "teenth", "Saturday") == Date(2013, 2, 16)
end
println()

@testset "Saturteenth of April 2013." begin
    @test meetup(2013, 4, "teenth", "Saturday") == Date(2013, 4, 13)
end
println()

@testset "Saturteenth of october 2013." begin
    @test meetup(2013, 10, "teenth", "Saturday") == Date(2013, 10, 19)
end
println()

@testset "Sunteenth of May 2013." begin
    @test meetup(2013, 5, "teenth", "Sunday") == Date(2013, 5, 19)
end
println()

@testset "Sunteenth of June 2013." begin
    @test meetup(2013, 6, "teenth", "Sunday") == Date(2013, 6, 16)
end
println()

@testset "Sunteenth of october 2013." begin
    @test meetup(2013, 10, "teenth", "Sunday") == Date(2013, 10, 13)
end
println()

@testset "First_Monday of March 2013." begin
    @test meetup(2013, 3, "1st", "Monday") == Date(2013, 3, 4)
end
println()

@testset "First Monday of April 2013." begin
    @test meetup(2013, 4, "1st", "Monday") == Date(2013, 4, 1)
end
println()

@testset "First Tuesday of May 2013." begin
    @test meetup(2013, 5, "1st", "Tuesday") == Date(2013, 5, 7)
end
println()

@testset "First Tuesday of June 2013." begin
    @test  meetup(2013, 6, "1st", "Tuesday") == Date(2013, 6, 4)
end
println()

@testset "First Wednesday of July 2013." begin
    @test meetup(2013, 7, "1st", "Wednesday") == Date(2013, 7, 3)
end
println()

@testset "First Wednesday of August 2013." begin
    @test meetup(2013, 8, "1st", "Wednesday") == Date(2013, 8, 7)
end
println()

@testset "First Thursday of September 2013." begin
    @test meetup(2013, 9, "1st", "Thursday") == Date(2013, 9, 5)
end
println()

@testset "First Thursday of october 2013." begin
    @test meetup(2013, 10, "1st", "Thursday") == Date(2013, 10, 3)
end
println()

@testset "First Friday of november 2013." begin
    @test meetup(2013, 11, "1st", "Friday") == Date(2013, 11, 1)
end
println()

@testset "First Friday of december 2013." begin
    @test meetup(2013, 12, "1st", "Friday") == Date(2013, 12, 6)
end
println()

@testset "First Saturday of January 2013." begin
    @test meetup(2013, 1, "1st", "Saturday") == Date(2013, 1, 5)
end
println()

@testset "First Saturday of February 2013." begin
    @test meetup(2013, 2, "1st", "Saturday") == Date(2013, 2, 2)
end
println()

@testset "First Sunday of March 2013." begin
    @test meetup(2013, 3, "1st", "Sunday") == Date(2013, 3, 3)
end
println()

@testset "First Sunday of April 2013." begin
    @test meetup(2013, 4, "1st", "Sunday") == Date(2013, 4, 7)
end
println()

@testset "Second Monday of March 2013." begin
    @test meetup(2013, 3, "2nd", "Monday") == Date(2013, 3, 11)
end
println()

@testset "Second Monday of April 2013." begin
    @test meetup(2013, 4, "2nd", "Monday") == Date(2013, 4, 8)
end
println()

@testset "Second Tuesday of May 2013." begin
    @test meetup(2013, 5, "2nd", "Tuesday") == Date(2013, 5, 14)
end
println()

@testset "Second Tuesday of June 2013." begin
    @test meetup(2013, 6, "2nd", "Tuesday") == Date(2013, 6, 11)
end
println()

@testset "Second Wednesday of July 2013." begin
    @test meetup(2013, 7, "2nd", "Wednesday") == Date(2013, 7, 10)
end
println()

@testset "Second Wednesday of August 2013." begin
    @test meetup(2013, 8, "2nd", "Wednesday") == Date(2013, 8, 14)
end
println()

@testset "Second Thursday of September 2013." begin
    @test meetup(2013, 9, "2nd", "Thursday") == Date(2013, 9, 12)
end
println()

@testset "Second Thursday of october 2013." begin
    @test meetup(2013, 10, "2nd", "Thursday") == Date(2013, 10, 10)
end
println()

@testset "Second Friday of november 2013." begin
    @test meetup(2013, 11, "2nd", "Friday") == Date(2013, 11, 8)
end
println()

@testset "Second Friday of december 2013." begin
    @test meetup(2013, 12, "2nd", "Friday") == Date(2013, 12, 13)
end
println()

@testset "Second Saturday of January 2013." begin
    @test meetup(2013, 1, "2nd", "Saturday") == Date(2013, 1, 12)
end
println()

@testset "Second Saturday of February 2013." begin
    @test meetup(2013, 2, "2nd", "Saturday") == Date(2013, 2, 9)
end
println()

@testset "Second Sunday of March 2013." begin
    @test meetup(2013, 3, "2nd", "Sunday") == Date(2013, 3, 10)
end
println()

@testset "Second Sunday of April 2013." begin
    @test meetup(2013, 4, "2nd", "Sunday") == Date(2013, 4, 14)
end
println()

@testset "Third Monday of March 2013." begin
    @test meetup(2013, 3, "3rd", "Monday") == Date(2013, 3, 18)
end
println()

@testset "Third Monday of April 2013." begin
    @test meetup(2013, 4, "3rd", "Monday") == Date(2013, 4, 15)
end
println()

@testset "Third Tuesday of May 2013." begin
    @test meetup(2013, 5, "3rd", "Tuesday") == Date(2013, 5, 21)
end
println()

@testset "Third Tuesday of June 2013." begin
    @test meetup(2013, 6, "3rd", "Tuesday") == Date(2013, 6, 18)
end
println()

@testset "Third Wednesday of July 2013." begin
    @test meetup(2013, 7, "3rd", "Wednesday") == Date(2013, 7, 17)
end
println()

@testset "Third Wednesday of August 2013." begin
    @test meetup(2013, 8, "3rd", "Wednesday") == Date(2013, 8, 21)
end
println()

@testset "Third Thursday of September 2013." begin
    @test meetup(2013, 9, "3rd", "Thursday") == Date(2013, 9, 19)
end
println()

@testset "Third Thursday of october 2013." begin
    @test meetup(2013, 10, "3rd", "Thursday") == Date(2013, 10, 17)
end
println()

@testset "Third Friday of november 2013." begin
    @test meetup(2013, 11, "3rd", "Friday") == Date(2013, 11, 15)
end
println()

@testset "Third Friday of december 2013." begin
    @test meetup(2013, 12, "3rd", "Friday") == Date(2013, 12, 20)
end
println()

@testset "Third Saturday of January 2013." begin
    @test meetup(2013, 1, "3rd", "Saturday") == Date(2013, 1, 19)
end
println()

@testset "Third Saturday of February 2013." begin
    @test meetup(2013, 2, "3rd", "Saturday") == Date(2013, 2, 16)
end
println()

@testset "Third Sunday of March 2013." begin
    @test meetup(2013, 3, "3rd", "Sunday") == Date(2013, 3, 17)
end
println()

@testset "Third Sunday of April 2013." begin
    @test meetup(2013, 4, "3rd", "Sunday") == Date(2013, 4, 21)
end
println()

@testset "Fourth Monday of March 2013." begin
    @test meetup(2013, 3, "4th", "Monday") == Date(2013, 3, 25)
end
println()

@testset "Fourth Monday of April 2013." begin
    @test meetup(2013, 4, "4th", "Monday") == Date(2013, 4, 22)
end
println()

@testset "Fourth Tuesday of May 2013." begin
    @test meetup(2013, 5, "4th", "Tuesday") == Date(2013, 5, 28)
end
println()

@testset "Fourth Tuesday of June 2013." begin
    @test meetup(2013, 6, "4th", "Tuesday") == Date(2013, 6, 25)
end
println()

@testset "Fourth Wednesday of July 2013." begin
    @test meetup(2013, 7, "4th", "Wednesday") == Date(2013, 7, 24)
end
println()

@testset "Fourth Wednesday of August 2013." begin
    @test meetup(2013, 8, "4th", "Wednesday") == Date(2013, 8, 28)
end
println()

@testset "Fourth Thursday of September 2013." begin
    @test meetup(2013, 9, "4th", "Thursday") == Date(2013, 9, 26)
end
println()

@testset "Fourth Thursday of october 2013." begin
    @test meetup(2013, 10, "4th", "Thursday") == Date(2013, 10, 24)
end
println()

@testset "Fourth Friday of november 2013." begin
    @test meetup(2013, 11, "4th", "Friday") == Date(2013, 11, 22)
end
println()

@testset "Fourth Friday of december 2013." begin
    @test meetup(2013, 12, "4th", "Friday") == Date(2013, 12, 27)
end
println()

@testset "Fourth Saturday of January 2013." begin
    @test meetup(2013, 1, "4th", "Saturday") == Date(2013, 1, 26)
end
println()

@testset "Fourth Saturday of February 2013." begin
    @test meetup(2013, 2, "4th", "Saturday") == Date(2013, 2, 23)
end
println()

@testset "Fourth Sunday of March 2013." begin
    @test meetup(2013, 3, "4th", "Sunday") == Date(2013, 3, 24)
end
println()

@testset "Fourth Sunday of April 2013." begin
    @test meetup(2013, 4, "4th", "Sunday") == Date(2013, 4, 28)
end
println()

@testset "Last Monday of March 2013." begin
    @test meetup(2013, 3, "last", "Monday") == Date(2013, 3, 25)
end
println()

@testset "Last Monday of April 2013." begin
    @test meetup(2013, 4, "last", "Monday") == Date(2013, 4, 29)
end
println()

@testset "Last Tuesday of May 2013." begin
    @test meetup(2013, 5, "last", "Tuesday") == Date(2013, 5, 28)
end
println()

@testset "Last Tuesday of June 2013." begin
    @test meetup(2013, 6, "last", "Tuesday") == Date(2013, 6, 25)
end
println()

@testset "Last Wednesday of July 2013." begin
    @test meetup(2013, 7, "last", "Wednesday") == Date(2013, 7, 31)
end
println()

@testset "Last Wednesday of August 2013." begin
    @test meetup(2013, 8, "last", "Wednesday") == Date(2013, 8, 28)
end
println()

@testset "Last Thursday of September 2013." begin
    @test meetup(2013, 9, "last", "Thursday") == Date(2013, 9, 26)
end
println()

@testset "Last Thursday of october 2013." begin
    @test meetup(2013, 10, "last", "Thursday") == Date(2013, 10, 31)
end
println()

@testset "Last Friday of november 2013." begin
    @test meetup(2013, 11, "last", "Friday") == Date(2013, 11, 29)
end
println()

@testset "Last Friday of december 2013." begin
    @test meetup(2013, 12, "last", "Friday") == Date(2013, 12, 27)
end
println()

@testset "Last Saturday of January 2013." begin
    @test meetup(2013, 1, "last", "Saturday") == Date(2013, 1, 26)
end
println()

@testset "Last Saturday of February 2013." begin
    @test meetup(2013, 2, "last", "Saturday") == Date(2013, 2, 23)
end
println()

@testset "Last Sunday of March 2013." begin
    @test meetup(2013, 3, "last", "Sunday") == Date(2013, 3, 31)
end
println()

@testset "Last Sunday of April 2013." begin
    @test meetup(2013, 4, "last", "Sunday") == Date(2013, 4, 28)
end
println()

@testset "Last Wednesday of February 2012." begin
    @test meetup(2012, 2, "last", "Wednesday") == Date(2012, 2, 29)
end
println()

@testset "Last Wednesday of december 2014." begin
    @test meetup(2014, 12, "last", "Wednesday") == Date(2014, 12, 31)
end
println()

@testset "Last Sunday of February 2015." begin
    @test meetup(2015, 2, "last", "Sunday") == Date(2015, 2, 22)
end
println()

@testset "First Friday of december 2012." begin
    @test meetup(2012, 12, "1st", "Friday") == Date(2012, 12, 7)
end
println()

# additional track specific tests
@testset "Fifth Monday of March 2015." begin
    @test meetup(2015, 3, "5th", "Monday") == Date(2015, 3, 30)
end
println()

@testset "Nonexistent fifth Monday of February 2015." begin
    @test_throws ErrorException meetup(2015, 2, "5th", "Monday")
end
println()
