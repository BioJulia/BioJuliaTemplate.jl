using Documenter, BioJuliaTemplate

# This code is executed in the environment in which doctests in the package's
# docstrings run. Use it to define global variables that docstrings can refer
# to.
meta = quote
    using BioJuliaTemplate
    data = "abcde"
end

DocMeta.setdocmeta!(BioJuliaTemplate, :DocTestSetup, meta; recursive = true)

makedocs(
    modules = [BioJuliaTemplate],
    sitename = "BioJuliaTemplate.jl",
    doctest = true,
    # These two pages are recommended, you can add more as you wish
    pages = [
        "BioJuliaTemplate" => "index.md",
        "Reference" => "reference.md",
    ],
    authors = "YourName",
    checkdocs = :public,
    remotes = nothing
)

deploydocs(;
    repo = "github.com/BioJulia/BioJuliaTemplate.jl.git",
    push_preview = true,
    deps = nothing,
    make = nothing,
)
