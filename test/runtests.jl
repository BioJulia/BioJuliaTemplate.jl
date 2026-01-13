module BioJuliaTemplateTest

using BioJuliaTemplate

using Test
using Aqua

@testset "Approximation" begin
    x = MyType(3, 4)
    @test isapprox(my_function(x), 5)
end

@testset "Aqua" begin
    Aqua.test_all(BioJuliaTemplate; 
        # # Override defaults:
        # ambiguities = false,
        # unbound_args = false,
        # undefined_exports = false,
        # project_extras = false,
        # stale_deps = false,
        # deps_compat = false,
        # piracies = false,
        # persistent_tasks = false,
        # undocumented_names = true,
    )
end

end # module BioJuliaTemplateTest
