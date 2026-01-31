-- -------------------------------------------------------------
--  l3build configuration for the seqcalc package
-- -------------------------------------------------------------

module = "seqcalc"

-- -------------------------------------------------------------
--  Source files
-- -------------------------------------------------------------
-- sourcefiles = {"source/seqcalc.sty"}

-- -------------------------------------------------------------
--  Documentation
-- -------------------------------------------------------------
-- typesetfiles = {"doc/seqcalc-doc.tex"}

-- docfiles = {
--   "README.md"
-- }

-- -------------------------------------------------------------
--  Tests
-- -------------------------------------------------------------
-- testfiledir = "testfiles"

checkengines = {"pdftex", "luatex"}
checkruns    = 2

-- -------------------------------------------------------------
--  Installation / CTAN packaging
-- -------------------------------------------------------------
-- installfiles = {"source/seqcalc.sty"}

-- tdsroot = "latex"

tdsdirs = {
  ["source"] = "source",
  ["doc"]    = "doc",
}

uploadconfig = {
  pkg         = "seqcalc",
  version     = "1.0",
  author      = "Julian",
  license     = "lppl1.3c",
  summary     = "A modern LaTeX package for declarative sequent-calculus proofs",
  ctanPath    = "/macros/latex/contrib/seqcalc",
  repository  = "https://github.com/lambdaphoenix/seqcalc",
  bugtracker  = "https://github.com/lambdaphoenix/seqcalc/issues",
  description = [[
    seqcalc is a modern LaTeX package that extends bussproofs with
    declarative rule definitions, formula normalization, shortcuts,
    and optional standard sequent-calculus rules.
  ]]
}

-- -------------------------------------------------------------
--  End of build.lua
-- -------------------------------------------------------------
