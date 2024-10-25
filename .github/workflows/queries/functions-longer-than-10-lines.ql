/**
 * @description Find all functions longer than 10 lines
 * @kind problem
 * @id javascript/functions-longer-than-10-lines
 * @problem.severity recommendation
 */
import javascript

predicate isFuncOver10(Function func) {
  func.getNumLines() > 10
}

from Function func, Function callee
where isFuncOver10(func)
select func, "is over 10 lines"
