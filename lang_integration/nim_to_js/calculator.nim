proc addTwoIntegers(a, b: int): int {.importc.}

when isMainModule:
  echo addTwoIntegers(3, 7)
