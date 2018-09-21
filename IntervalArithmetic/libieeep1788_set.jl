#=
 
 Unit tests from libieeep1788 for interval set operations
 (Original author: Marco Nehmeier)
 converted into portable ITL format by Oliver Heimlich.
 
 Copyright 2013-2015 Marco Nehmeier (nehmeier@informatik.uni-wuerzburg.de)
 Copyright 2015-2017 Oliver Heimlich (oheim@posteo.de)
 
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 
     http://www.apache.org/licenses/LICENSE-2.0
 
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 
=#
#Language imports

#Test library imports
using Base.Test

#Arithmetic library imports
using IntervalArithmetic

#Preamble
setprecision(53)
setprecision(Interval, Float64)
setrounding(Interval, :tight)
# Set full format, and show decorations
@format full

@testset "minimal_intersection_test" begin
    @test intersect(Interval(1.0, 3.0), Interval(2.1, 4.0)) == Interval(2.1, 3.0)
    @test ∩(Interval(1.0, 3.0), Interval(2.1, 4.0)) == Interval(2.1, 3.0)
    @test intersect(Interval(1.0, 3.0), Interval(3.0, 4.0)) == Interval(3.0, 3.0)
    @test ∩(Interval(1.0, 3.0), Interval(3.0, 4.0)) == Interval(3.0, 3.0)
    @test intersect(Interval(1.0, 3.0), ∅) == ∅
    @test ∩(Interval(1.0, 3.0), ∅) == ∅
    @test intersect(entireinterval(Float64), ∅) == ∅
    @test ∩(entireinterval(Float64), ∅) == ∅
    @test intersect(Interval(1.0, 3.0), entireinterval(Float64)) == Interval(1.0, 3.0)
    @test ∩(Interval(1.0, 3.0), entireinterval(Float64)) == Interval(1.0, 3.0)
end

@testset "minimal_intersection_dec_test" begin
    @test intersect(DecoratedInterval(Interval(1.0, 3.0), com), DecoratedInterval(Interval(2.1, 4.0), com)) == DecoratedInterval(Interval(2.1, 3.0), trv)
    @test ∩(DecoratedInterval(Interval(1.0, 3.0), com), DecoratedInterval(Interval(2.1, 4.0), com)) == DecoratedInterval(Interval(2.1, 3.0), trv)
    @test intersect(DecoratedInterval(Interval(1.0, 3.0), dac), DecoratedInterval(Interval(3.0, 4.0), def)) == DecoratedInterval(Interval(3.0, 3.0), trv)
    @test ∩(DecoratedInterval(Interval(1.0, 3.0), dac), DecoratedInterval(Interval(3.0, 4.0), def)) == DecoratedInterval(Interval(3.0, 3.0), trv)
    @test intersect(DecoratedInterval(Interval(1.0, 3.0), def), DecoratedInterval(∅, trv)) == DecoratedInterval(∅, trv)
    @test ∩(DecoratedInterval(Interval(1.0, 3.0), def), DecoratedInterval(∅, trv)) == DecoratedInterval(∅, trv)
    @test intersect(DecoratedInterval(entireinterval(Float64), dac), DecoratedInterval(∅, trv)) == DecoratedInterval(∅, trv)
    @test ∩(DecoratedInterval(entireinterval(Float64), dac), DecoratedInterval(∅, trv)) == DecoratedInterval(∅, trv)
    @test intersect(DecoratedInterval(Interval(1.0, 3.0), dac), DecoratedInterval(entireinterval(Float64), dac)) == DecoratedInterval(Interval(1.0, 3.0), trv)
    @test ∩(DecoratedInterval(Interval(1.0, 3.0), dac), DecoratedInterval(entireinterval(Float64), dac)) == DecoratedInterval(Interval(1.0, 3.0), trv)
end

@testset "minimal_convex_hull_test" begin
    @test hull(Interval(1.0, 3.0), Interval(2.1, 4.0)) == Interval(1.0, 4.0)
    @test ∪(Interval(1.0, 3.0), Interval(2.1, 4.0)) == Interval(1.0, 4.0)
    @test hull(Interval(1.0, 1.0), Interval(2.1, 4.0)) == Interval(1.0, 4.0)
    @test ∪(Interval(1.0, 1.0), Interval(2.1, 4.0)) == Interval(1.0, 4.0)
    @test hull(Interval(1.0, 3.0), ∅) == Interval(1.0, 3.0)
    @test ∪(Interval(1.0, 3.0), ∅) == Interval(1.0, 3.0)
    @test hull(∅, ∅) == ∅
    @test ∪(∅, ∅) == ∅
    @test hull(Interval(1.0, 3.0), entireinterval(Float64)) == entireinterval(Float64)
    @test ∪(Interval(1.0, 3.0), entireinterval(Float64)) == entireinterval(Float64)
end

@testset "minimal_convex_hull_dec_test" begin
    @test hull(DecoratedInterval(Interval(1.0, 3.0), trv), DecoratedInterval(Interval(2.1, 4.0), trv)) == DecoratedInterval(Interval(1.0, 4.0), trv)
    @test ∪(DecoratedInterval(Interval(1.0, 3.0), trv), DecoratedInterval(Interval(2.1, 4.0), trv)) == DecoratedInterval(Interval(1.0, 4.0), trv)
    @test hull(DecoratedInterval(Interval(1.0, 1.0), trv), DecoratedInterval(Interval(2.1, 4.0), trv)) == DecoratedInterval(Interval(1.0, 4.0), trv)
    @test ∪(DecoratedInterval(Interval(1.0, 1.0), trv), DecoratedInterval(Interval(2.1, 4.0), trv)) == DecoratedInterval(Interval(1.0, 4.0), trv)
    @test hull(DecoratedInterval(Interval(1.0, 3.0), trv), DecoratedInterval(∅, trv)) == DecoratedInterval(Interval(1.0, 3.0), trv)
    @test ∪(DecoratedInterval(Interval(1.0, 3.0), trv), DecoratedInterval(∅, trv)) == DecoratedInterval(Interval(1.0, 3.0), trv)
    @test hull(DecoratedInterval(∅, trv), DecoratedInterval(∅, trv)) == DecoratedInterval(∅, trv)
    @test ∪(DecoratedInterval(∅, trv), DecoratedInterval(∅, trv)) == DecoratedInterval(∅, trv)
    @test hull(DecoratedInterval(Interval(1.0, 3.0), trv), DecoratedInterval(entireinterval(Float64), dac)) == DecoratedInterval(entireinterval(Float64), trv)
    @test ∪(DecoratedInterval(Interval(1.0, 3.0), trv), DecoratedInterval(entireinterval(Float64), dac)) == DecoratedInterval(entireinterval(Float64), trv)
end
# FactCheck.exitstatus()
