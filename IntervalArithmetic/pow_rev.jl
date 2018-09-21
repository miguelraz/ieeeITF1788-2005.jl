#=
 
 Test cases for reverse interval power operations.
 
 Copyright 2015-2016 Oliver Heimlich
 
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

#=
 The following tests use boundaries for the first parameter whose reciprocal
 can be computed without round-off error in a binary floating-point context.
 Thus, an implementation should be able to compute tight results with the
 formula x = z ^ (1 / y) for the intervals used here.
 
 The test values are structured according to table B.1 in
 Heimlich, Oliver. 2011. “The General Interval Power Function.”
 Diplomarbeit, Institute for Computer Science, University of Würzburg.
 http://exp.ln0.de/heimlich-power-2011.htm.
=#
@testset "minimal.powRev1_test" begin

end

#=
 The following tests use boundaries for the first and second parameter
 whose binary logarithm can be computed without round-off error in a
 binary floating-point context.
 Thus, an implementation should be able to compute tight results with the
 formula y = log2 z / log2 x for the intervals used here.
 Implementations which use natural logarithm would introduce additional
 errors.
 
 The test values are structured according to table B.2 in
 Heimlich, Oliver. 2011. “The General Interval Power Function.”
 Diplomarbeit, Institute for Computer Science, University of Würzburg.
 http://exp.ln0.de/heimlich-power-2011.htm.
=#
@testset "minimal.powRev2_test" begin

end
# FactCheck.exitstatus()
