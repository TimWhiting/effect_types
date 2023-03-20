effect eff2
  ctl doF(i: int): bool

fun h(f: () -> eff2 bool): string
  handle(f)
    return(x: bool)
      if x then "> 0" else "<= 0"
    ctl doF(i: int)
      val b = if i > 0 then False else True
      "doF called with a number " ++ resume(b) ++ " which is not " ++ resume(!b)

fun main(): console ()
  h(fn() doF(1)).println
  h(fn() doF(-1)).println
  

