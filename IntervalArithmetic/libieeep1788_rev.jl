#=
 
 Unit tests from libieeep1788 for reverse interval operations
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

@testset "minimal_sqr_rev_test" begin

end

@testset "minimal_sqr_rev_bin_test" begin

end

@testset "minimal_sqr_rev_dec_test" begin

end

@testset "minimal_sqr_rev_dec_bin_test" begin

end

@testset "minimal_abs_rev_test" begin

end

@testset "minimal_abs_rev_bin_test" begin

end

@testset "minimal_abs_rev_dec_test" begin

end

@testset "minimal_abs_rev_dec_bin_test" begin

end

@testset "minimal_pown_rev_test" begin

end

@testset "minimal_pown_rev_bin_test" begin

end

@testset "minimal_pown_rev_dec_test" begin

end

@testset "minimal_pown_rev_dec_bin_test" begin

end

@testset "minimal_sin_rev_test" begin

end

@testset "minimal_sin_rev_bin_test" begin

end

@testset "minimal_sin_rev_dec_test" begin

end

@testset "minimal_sin_rev_dec_bin_test" begin

end

@testset "minimal_cos_rev_test" begin

end

@testset "minimal_cos_rev_bin_test" begin

end

@testset "minimal_cos_rev_dec_test" begin

end

@testset "minimal_cos_rev_dec_bin_test" begin

end

@testset "minimal_tan_rev_test" begin

end

@testset "minimal_tan_rev_bin_test" begin

end

@testset "minimal_tan_rev_dec_test" begin

end

@testset "minimal_tan_rev_dec_bin_test" begin

end

@testset "minimal_cosh_rev_test" begin

end

@testset "minimal_cosh_rev_bin_test" begin

end

@testset "minimal_cosh_rev_dec_test" begin

end

@testset "minimal_cosh_rev_dec_bin_test" begin

end

@testset "minimal_mul_rev_test" begin

end

@testset "minimal_mul_rev_ten_test" begin

end

@testset "minimal_mul_rev_dec_test" begin

end

@testset "minimal_mul_rev_dec_ten_test" begin

end
# FactCheck.exitstatus()
