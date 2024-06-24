using Documenter, BioJuliaTemplate

# This code will be executed in the environment your doctests inside the
# package's docstrings are run.
# Use it to define some global variables that can be referred to in your
# docstrings.
meta = quote
    using BioJuliaTemplate
    data = "abcde"
end

DocMeta.setdocmeta!(BioJuliaTemplate, :DocTestSetup, meta; recursive=true)

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
    remotes=nothing
)

deploydocs(;
    repo="github.com/BioJulia/BioJuliaTemplates.jl.git",
    push_preview=true,
    deps=nothing,
    make=nothing,
)
