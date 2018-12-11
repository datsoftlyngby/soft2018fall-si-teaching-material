import os
import json
import math
import sequtils
import strutils

type
  Data = object
    matrix: seq[seq[int]]
  
proc main(): seq[float] =
    if paramCount() != 1:
        quit("Usage: " & getAppFilename() & " {\"matrix\": [[1,2,3], [3,4,5,5]]}")
    else:
        let matrixStr = paramStr(1)
        # echo matrixStr
        let jsonNode = parseJson(matrixStr)
        let data = json.to(jsonNode, Data)

        var res: seq[float] = @[]
        for vector in data.matrix:
            res.add(sum(vector) / vector.len)

        return res

let valSeq = main()
let strings = valSeq.mapIt(string, $it).join(",")
echo "[" & strings & "]"
#echo(main().mapIt(string, string($it).join))