# Side Effects | Effect Typing | Algebraic Effect Handlers

## Side Effects

Reasoning about side-effects in your programming language can be powerful.
Most programs become more difficult to reason about as they grow in complexity.

Additionally, functional languages are separated into two groups: those that are 'pure' and those that are not.
Pure functional languages require that most side-effects be reified into a value and represented in the types (e.g. Haskell / Elm).
Non-pure functional languages allow side-effects to be expressed in the language via operators such as mutable set!, etc, while still supporting a mostly effect-free style (e.g. OCaml / Scheme / Racket).

One interesting thing about effects in a purely-functional language is that you can have effects such as mutable state internally in an algorithm, while still exposing a pure interface to the outside. This so called 'interior mutability' is a powerful tool for writing efficient code, while keeping interfaces easy to reason about, and enforcing the abstraction so that mutations cannot be observed from outside the algorithm.

## Effect Types

Generally even 'pure' languages have some effects that are not visible in the types and accepted throughout. For example Haskell's notion of purity extends to allowing divergence and exceptions. However, these particular effects make internals of a pure interface potentially user visible due to the control flow that occurs.

Effect typing is a way to make effects visible to the user, and enforce they are handled in a way the user can reason about. Simple effect types can be used to enforce that a function is pure, or that it can only throw exceptions, or that it can only diverge. More complex effect types can be used to enforce that a function can only perform a specific set of effects. Even more complex effect typing systems allow for user extensible effect types, which also can change control flow based on delimited continuations. These most advanced effect types are typically called Algebraic Effect Handlers due to the way that they compose in a natural algebraic way.

## Algebraic Effect Handlers

The paper we will discuss in class is: [Type Directed Compilation of Row-Typed Algebraic Effects](https://dl.acm.org/doi/pdf/10.1145/3009837.3009872). Row types are partially ordered multisets. They are only one way of representing effect types. Some other languages with algebraic effects use sets, others use sets with both positive and negative elements. I personally feel that multisets are the most natural way to represent effect types. The paper does a good job of introducing algebraic effects with plenty of examples, so I will not go into too much detail here.

This paper is a early look at algebraic effect types and doesn't come with more recent advances with effect types, however it is a good introduction to the topic and the field is currently varied with many different approaches that there is not one coherent type system that is the standard I can point you to.

Here is a list of papers that I think are interesting and worth reading:

Variations of Algebraic Effects

- [Shallow effect handlers](https://dhil.net/research/papers/shallow_effect_handlers-extended-aplas2018.pdf)
- [First-class names for effect handlers](https://dl.acm.org/doi/pdf/10.1145/3563289)
- [Doo bee doo bee doo](https://www.cambridge.org/core/services/aop-cambridge-core/content/view/DEC5F8FDABF7DE3088270E07392320DD/S0956796820000039a.pdf/doo-bee-doo-bee-doo.pdf)
- [Handling bidirectional control flow](https://dl.acm.org/doi/pdf/10.1145/3428207)
- (Different from the paper below on structured asynchrony) [Asynchronous Effects](https://dl.acm.org/doi/pdf/10.1145/3434305)

Scoping

- [Abstraction-safe effect handlers via tunneling](https://dl.acm.org/doi/pdf/10.1145/3290318)
- (Lexically scoped handlers) [Binders by Day, Labels by Night](https://ii.uni.wroc.pl/~mpirog/papers/binders-labels.pdf)

Application

- [Automatic Differentiation via effects and handlers: An implementation in Frank](https://arxiv.org/pdf/2101.08095) (Personally I feel the implementation in koka in the second paper in the list about first-class names for effect handlers is nicer)
- [Algebraic Effect Handlers with Resources and Deep Finalization](https://www.microsoft.com/en-us/research/uploads/prod/2018/04/resource-v1.pdf)
- [Parallel Algebraic Effect Handlers](https://arxiv.org/pdf/2110.07493)
- [Structured Asynchrony with Algebraic Effects](https://dl.acm.org/doi/pdf/10.1145/3122975.3122977)

Compilation

- [Efficient Compilation of Effect Handlers to C](https://scholar.google.com/scholar?output=instlink&q=info:VTUYyrS0_noJ:scholar.google.com/&hl=en&as_sdt=0,45&scillfp=14978155210146414411&oi=lle)
- [Efficient Compilation of Algebraic Effect Handlers](https://lirias.kuleuven.be/retrieve/656121)
- [Implementing Algebraic Effects in C: "Monads for Free in C"](https://www.microsoft.com/en-us/research/wp-content/uploads/2017/06/algeff-in-c-tr-v2.pdf)
- (For lazy languages) [Fusion for free](https://lirias.kuleuven.be/retrieve/322544)

Expressive Power

- [Expressive Power](https://scholar.google.com/scholar?output=instlink&q=info:0MHwOxak6lYJ:scholar.google.com/&hl=en&as_sdt=0,45&scillfp=17791302397916390742&oi=lle)
- [Asymptotic Improvement via Effect Handlers](https://www.dhil.net/research/papers/asympeff-jfp2022-draft.pdf)

[Dependent Types](https://dl.acm.org/doi/pdf/10.1145/2500365.2500581)

Row types in general: [Abstracting extensible data types: or, rows by any other name](https://dl.acm.org/doi/pdf/10.1145/3290325)

Effects Bibliography: https://github.com/yallop/effects-bibliography

Original Formalism: [Adequacy of Algebraic Effects](https://link.springer.com/content/pdf/10.1007/3-540-45315-6_1.pdf?pdf=inline%20link)
