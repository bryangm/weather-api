FROM mcr.microsoft.com/dotnet/aspnet:5.0-alpine
 
COPY src/WeatherApi/bin/Release/net5.0/publish App/
WORKDIR /App

EXPOSE 80
EXPOSE 443
ENTRYPOINT ["dotnet", "WeatherApi.dll"]