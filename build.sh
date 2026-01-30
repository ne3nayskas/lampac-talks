#!/usr/bin/env bash

# Build script for Lampac .NET project
set -e

echo "Building Lampac project..."

# Verify .NET version
echo "Using .NET version: $(dotnet --version)"

# Restore dependencies
echo "Restoring NuGet packages..."
dotnet restore Lampac.sln

# Build the solution in Release mode
echo "Building solution..."
dotnet build Lampac.sln --configuration Release --no-restore

# Optional: Publish the main application
echo "Publishing Lampac application..."
dotnet publish Lampac/Lampac.csproj --configuration Release --output ./publish --no-build

echo "Build completed successfully!"
echo "Published application available in ./publish directory"
