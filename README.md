# Samples-GPR-Aggregate-Libs
Tests of GPR aggregates of GPR libraries

There are
  - 3 GPR projects that holds Interfaces definition
  - 3 GPR projects that define libs that realizes the Interfaces contracts (1 lib / interface)
  - 1 GPR project `LibFull` that aggregates the 3 Libs to build a single Library
  - 1 GPR that holds productions options (compiler, binder, linker, pretty print, etc.)
  - 1 GPR that holds an executable based on the `LibFull` library
