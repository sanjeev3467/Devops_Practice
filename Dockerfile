FROM mcr.microsoft.com/dotnet/aspnet:7.0
ADD apt update && apt install unzip && apt install wget
RUN wget https://github.com/nopSolutions/nopCommerce/releases/download/release-4.50.3/nopCommerce_4.50.3_NoSource_linux_x64.zip && unzip nopCommerce_4.50.3_NoSource_linux_x64.zip && mkdir logs
EXPOSE 8080
CMD ["/usr/bin/dotnet","/Nop.Web.dll"]