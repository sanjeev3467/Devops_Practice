FROM mcr.microsoft.com/dotnet/aspnet:7.0
LABEL author="sanjeev"
ADD wget wget https://github.com/nopSolutions/nopCommerce/releases/download/release-4.50.3/nopCommerce_4.50.3_NoSource_linux_x64.zip
RUN sudo apt-get update && apt-get install unzip wget && unzip nopCommerce_4.50.3_NoSource_linux_x64.zip && mkdir logs
WORKDIR  /
EXPOSE 80
CMD ["/usr/bin/dotnet" "/Nop.Web.dll"]