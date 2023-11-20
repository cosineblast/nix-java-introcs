
# java-introcs-nix-flake

A simple nix flake for [java-introcs](https://introcs.cs.princeton.edu/java/stdlib/)

This project is a simple nix derivation and flake for the princeton java-introcs runtime.

The flake provides JDK11 alongside the princeton executables, such as `java-introcs` and 
`javac-introcs`.

The instructions on how to install this were derived from [the princeton page](https://lift.cs.princeton.edu/java/linux/)

## Running the flake

``` sh
nix shell

# done! now you already have java-introcs and javac-introcs at your disposal

java-introcs StdDraw
```

