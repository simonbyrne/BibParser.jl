module BibParser

export parse_file

include("utils.jl")

# BibTeX module
include("bibtex.jl")
import .BibTeX

# CSL-JSON module
include("csl.jl")
import .CSL

"""
    parse_file(path::String; parser::Symbol = :BibTeX)
Parse a bibliography file. Default to BibTeX format. No other options available yet (CSL-JSON coming soon).
"""
function parse_file(path::String; parser::Symbol = :BibTeX)
    if parser == :BibTeX
        BibTeX.parse_file(path)
    end
end

"""
    parse_entry(entry::String; parser::Symbol = :BibTeX)
Parse a string entry. Default to BibTeX format. No other options available yet (CSL-JSON coming soon).
"""
function parse_entry(entry::String; parser::Symbol = :BibTeX)
    if parser == :BibTeX
        BibTeX.parse_bibtex(entry)
    end
end

end # module
