### dependencies
- `no-default-features` when ever possible to keep the bundle size and compile time to a minimum
    - only required features
    - crates that provide core functionality are exempted from these rules

### implementations

- has to have a trait

```rust
// nono
impl MyStruct {}

// yesyes
impl MyTrait for MyStruct {}
```

- types *(structs and enums)* should implement `Debug`, `Default` (enums are exempted), `Clone`
    - also `Copy` and `Display` optionally

- types should have either a `new` function or all fields should be public

### naming

**use rust naming conventions in most places**

There are some cases where variables should have a prefix, eg `l_`, or `p_` to
avoid conflicts between function params, local and global variables.

**Only the rust naming rules are enforced**

### visibility

- struct fields should expose only the fields that need to be used elsewhere
    - use `pub(crate)` when exposing for the whole crate
    - use `pub(self)` when exposing for the current module

### testing

use `cargo-nextest` for running the tests

`rstest` is the actual testing framework
