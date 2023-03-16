# Side Effects & Effect Typing

Reasoning about side-effects in your programming language can be powerful.
Most imperative languages become more difficult to reason about as they grow in complexity.

Additionally, functional languages are separated into two groups: those that are 'pure' and those that are not.
Pure functional languages require that most side-effects be reified into a value and represented in the types (e.g. Haskell / Elm).
Non-pure functional languages allow side-effects to be expressed in the language via mutable set! operators etc, while still supporting a mostly effect-free style (e.g. OCaml / Scheme / Racket).

One interesting thing about effects in a purely-functional language is that you can have effects or mutable state internally in an algorithm, while still exposing a pure interface to the outside. This so called 'interior mutability' is a powerful tool for writing efficient code, while keeping interfaces easy to reason about, and enforcing the abstraction so that mutations cannot be observed from outside the algorithm.

## Effect Types

Generally even 'pure' languages have some effects that are not visible in the types and accepted throughout. For example Haskell's notion of purity extends to allowing divergence and exceptions. However, these particular effects make internals of a pure interface potentially user visible due to the control flow they effect.

Effect typing is a way to make effects visible to the user, and enforce they are handled in a way the user can reason about. Simple effect types can be used to enforce that a function is pure, or that it can only throw exceptions, or that it can only diverge. More complex effect types can be used to enforce that a function can only perform a specific set of effects. Even more complex effect typing systems allow for user extensible effect types, which also can change control flow based on delimited continuations. These most advanced effect types are typically called Algebraic Effect Handlers due to the way that they compose in a natural algebraic way.
