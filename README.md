# Foundry accessing memory

In solidity, array inputs are declared with the `memory` keyword to stored the array values in memory so they can be accessed during execution

```js
function args(uint8[4] memory arr) { /* rest of logic ... */  }
```

How does solidity do it?

1. Solidity stores the location in memory where the array is stored
1. The length of the array (only if you don't specify length)
1. The rest of the values in order

# Test

Run in terminal

```zsh
forge test -vvv
```

```zsh
[⠔] Compiling...
[⠒] Compiling 2 files with 0.8.19
[⠢] Solc 0.8.19 finished in 1.57s
Compiler run successful!

Running 1 test for test/Memory.t.sol:CounterTest
[PASS] testArgs() (gas: 9631)
Test result: ok. 1 passed; 0 failed; finished in 989.39µs
```
