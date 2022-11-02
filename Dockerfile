FROM mcr.microsoft.com/dotnet/aspnet:7.0
LABEL author=sanjeev
RUN apt update && apt install unzip && apt install wget && wget https://github.com/nopSolutions/nopCommerce/releases/download/release-4.50.3/nopCommerce_4.50.3_NoSource_linux_x64.zip && unzip nopCommerce_4.50.3_NoSource_linux_x64.zip && mkdir logs
EXPOSE 8080
CMD ["/usr/bin/dotnet","/Nop.Web.dll"]