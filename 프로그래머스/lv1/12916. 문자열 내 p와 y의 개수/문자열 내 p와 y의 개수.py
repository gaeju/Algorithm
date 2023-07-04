def solution(s):
  p = 0
  t = 0
  for i in range(len(s)):
    if s[i] == 'p' or s[i] == 'P':
      p += 1
    elif s[i] == 'y' or s[i] == 'Y':
      t += 1
  return p == t