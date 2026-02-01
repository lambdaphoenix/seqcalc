# seqcalc - A structured sequent calculus wrapper for `bussproofs`

## Overview
**Version:** 1.0<br>
**Date:** 2026-01-31<br>
**Author:** Julian ([lambdaphoenix](https://github.com/lambdaphoenix))<br>
**License:** LPPL 1.3c or later<br>

`seqcalc` is a structured, declarative wrapper around the [`bussproofs`](https://ctan.org/pkg/bussproofs) package. It provides an interface for building sequent calculus proofs while preserving the underlying layout logic of `bussproofs`.<br>

The package adds:
- a declarative rule system with automatic macro generation,
- optional formula-list normalization,
- optional debug output,
- optional shortcut commands,
- optional built-in standard rule sets,
- wrapper environments for proof trees.

`seqcalc` does not modify the spacing, box construction, or layout algorithms of `bussproofs`. It only adds a structured interface on top.

## Features

### Sequent commands
- `\seq{A}{B}` - typeset a sequent
- `\seqL{A}`, `\seqR{A}` - left/right-only sequents
- Automatic normalization of formula lists (optional)

### Axioms and premises
- `\SeqAxiom{A}` - closed leaf
- `\SeqPremise{A}` - open leaf

### Conclusions
- `\SeqConclusion[Label]{Cmd}{Formula}[Hint]`
- Convenience forms:
  - `\SeqConclusionU{Formula}`
  - `\SeqConclusionB{Formula}`

### Rule system
- Declare rules:
    ```latex
    \SeqCalcDeclareRule{Name}{Arity}[Label]
    ```
- Apply rules:
    ```latex
    \SeqRule{Name}{Formula}[Hint]
    \Name{Formula}[Hint]       % auto-generated
    ```

### Shortcuts (optional)
- Enabled via:
    ```latex
    \EnableSeqShortcuts
    ```

### Standard rules (optional)
- Enabled via:
    ```latex
    \EnableSeqStandardRules
    ```

### Proof environments
- `seqproof` - wrapper around prooftree
- `seqproofinline` - compact inline proof trees

## Installation
Place `seqcalc.sty` somewhere in your TeX tree, then load it:
```latex
\usepackage{seqcalc}
```

## Package options
| Option | Values | Default | Description |
|---|---|---|---|
| `normalize-formulas` | true, false | true | Normalize formula lists |
| `debug` | true, false | false | Print debug messages |
| `shortcuts` | true, false | false | Enable shortcut macros |
| `standard-rules` | true, false | false | Load built-in rule set |

## Documentation
The full package documentation is available in:
- `doc/seqcalc-doc.pdf`
- Online: https://github.com/lambdaphoenix/seqcalc/blob/main/doc/seqcalc-doc.pdf


## License
This work may be distributed and/or modified under the conditions of the LaTeX Project Public License, either version 1.3c of this license or (at your option) any later version. The latest version of this license is in<br>
&emsp;&emsp;&emsp;https://www.latex-project.org/lppl.txt<br>
and version 1.3c or later is part of all distributions of LaTeX version 2008 or later.<br>

This work has the LPPL maintenance status `maintained'.<br>
The Current Maintainer of this work is Julian.

## Development
The package is developed openly on GitHub:<br>
&emsp;Repository: https://github.com/lambdaphoenix/seqcalc<br>
&emsp;Issue tracker: https://github.com/lambdaphoenix/seqcalc/issues
