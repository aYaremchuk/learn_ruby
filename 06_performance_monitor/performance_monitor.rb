def measure(n = 1)
  startTime = Time.now
  n.times {yield}
  duration = Time.now - startTime
  n > 1 ? duration/n : duration
end