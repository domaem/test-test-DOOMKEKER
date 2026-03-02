# Use the official Golang image
FROM golang:1.21-alpine

# Set the working directory
WORKDIR /app

# Copy the Go source code
COPY main.go .

# Build the Go application
RUN go build -o server main.go

# Expose port 8080
EXPOSE 8080

# Command to run the application
CMD ["./server"]