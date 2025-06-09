How to calculate inter-distances more than two points with co-ordinates
For Two Points 
library(geosphere)

# Define coordinates (longitude first, then latitude)
point1 <- c(88.293958, 26.480089)
point2 <- c(88.293849, 26.480583)

# Calculate the Haversine distance in meters
distance <- distHaversine(point1, point2)

# Print the distance
print(distance)

For Four points 
library(geosphere)

# Define four points (longitude, latitude)
points <- matrix(c(
  88.293958, 26.480089,  # Point A
  88.293849, 26.480583,  # Point B
  88.294500, 26.481000,  # Point C
  88.295000, 26.482000   # Point D
), ncol = 2, byrow = TRUE)

# Compute distance matrix (in meters)
distance_matrix <- distm(points, fun = distHaversine)

# Print the distance matrix
print(distance_matrix)
df <- as.data.frame(distance_matrix)
write_xlsx(df,"distance_matrix.xlsx")
library(writexl)
getwd()

# Optional: Convert meters to kilometers
distance_matrix_km <- distance_matrix / 1000
print(distance_matrix_km)

The distance between TW1 and TW2 is 56.05 meters. The distance between TW1 and TW3 is 114.89 meters. The distance between TW1 and TW4 is 236.72 meters. The distance between TW2 and TW3 is 79.76 meters. The distance between TW2 and TW4 is 195.02 meters. The distance between TW3 and TW4 is 121.96 meters.