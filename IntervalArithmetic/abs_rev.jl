#=
 
 Test cases for reverse interval absolute value function.
 
 Copyright 2015-2016 Oliver Heimlich (oheim@posteo.de)
 
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

@testset "minimal.absRevBin_test" begin

end
# FactCheck.exitstatus()
