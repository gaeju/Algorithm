def solution(n):
    sum = 0
    for i in range(len(str(n))):
        n = str(n)
        sum += int(n[i])
    return sum
solution(123)