# Use the official .NET 8.0 SDK image to build the app
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build

# Set the working directory inside the container
WORKDIR /app

# Copy the project file and restore dependencies
COPY *.csproj .
RUN dotnet restore

# Copy the rest of the application code
COPY . .

# Build the application
RUN dotnet publish -c Release -o /out

# Use the official .NET 8.0 runtime image to run the app
FROM mcr.microsoft.com/dotnet/runtime:8.0

# Set the working directory inside the container
WORKDIR /app

# Copy the built application from the previous stage
COPY --from=build /out .

# Define the entry point for the container
ENTRYPOINT ["dotnet", "DotNetCoreDockerApp.dll"]
