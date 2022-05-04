FROM mcr.microsoft.com/dotnet/aspnet:6.0-alpine
RUN mkdir /root/release_dll
COPY release_dll/  /root/release_dll

WORKDIR /root/
ENV ASPNETCORE_URLS="http://*:80" 
EXPOSE 80
ENTRYPOINT ["dotnet", "/root/release_dll/PWMServices.dll"]