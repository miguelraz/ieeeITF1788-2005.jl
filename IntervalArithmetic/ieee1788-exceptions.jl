#=
 
 Test cases for interval exceptions from IEEE Std 1788-2015
 
 Copyright 2016 Oliver Heimlich (oheim@posteo.de)
 
 Copying and distribution of this file, with or without modification,
 are permitted in any medium without royalty provided the copyright
 notice and this notice are preserved.  This file is offered as-is,
 without any warranty.
 
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

@testset "exceptions" begin
    @test @interval("[+infinity]") == ∅
    @test Interval(Inf, -Inf) == ∅
    @test @interval("[1.0000000000000001, 1.0000000000000002]") == Interval(1.0, 0x1.0000000000001p+0)
end
# FactCheck.exitstatus()
