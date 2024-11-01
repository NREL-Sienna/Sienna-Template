using Documenter, SIENNA - PACKAGE

pages = OrderedDict(
    "Welcome Page" => "index.md",
    "Quick Start Guide" => "quick_start_guide.md",
    "Tutorials" => "tutorials/intro_page.md",
    "Public API Reference" => "api/public.md",
    "Internal API Reference" => "api/internal.md",
)

makedocs(
    modules=[SIENNA-PACKAGE],
    format=Documenter.HTML(prettyurls=haskey(ENV, "GITHUB_ACTIONS")),
    sitename="SIENNA-PACKAGE.jl",
    authors="Freddy Mercury, Nikola Tesla, Leonard Bernestein",
    pages=Any[p for p in pages],
)

deploydocs(
    repo="github.com/NREL-SIENNA/SIENNA-PACKAGE.git",
    target="build",
    branch="gh-pages",
    devbranch="main",
    devurl="dev",
    push_preview=true,
    versions=["stable" => "v^", "v#.#"],
)
