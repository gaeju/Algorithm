def solution(x, n):
    answer = []
    xx = x
    for a in range(n):
      answer.append(x)
      x += xx
    return answer