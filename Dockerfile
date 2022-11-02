FROM mcr.microsoft.com/dotnet/aspnet:7.0
LABEL author="sanjeev"
ADD wget wget https://github.com/nopSolutions/nopCommerce/releases/download/release-4.50.3/nopCommerce_4.50.3_NoSource_linux_x64.zip
RUN sudo apt-get update && apt-get install unzip && unzip nopCommerce_4.50.3_NoSource_linux_x64.zip && mkdir /var/www/nopCommerce450/bin && mkdir /var/www/nopCommerce450/logs
WORKDIR  /var/www/nopCommerce450
EXPOSE 80
CMD [ "dotnet", "aspnetapp.dll" ]