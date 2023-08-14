calculate_triangle_area <- function(a,b,c){
  s = (a + b + c) / 2
  area <- sqrt(s * (s - a) * (s - b) * (s - c))
  return (area)
}

print(calculate_triangle_area(7,9,12))

