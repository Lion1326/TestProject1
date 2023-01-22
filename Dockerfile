# ������� �������, ����� ����� ������ ������� ����� ������� � ������ �� Image, ����� ��������� ��� ���� ���, 
#�� ��� �� �� ������� � ��������� ��� ����� ��� �� ���������, �� �� ����� ���������� )


FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
WORKDIR /source

COPY *.csproj .
RUN dotnet restore --use-current-runtime  

COPY . .
RUN dotnet publish -c Release -o /app --use-current-runtime --self-contained false --no-restore

FROM mcr.microsoft.com/dotnet/aspnet:6.0
WORKDIR /app
COPY --from=build /app .
ENTRYPOINT ["dotnet", "aspnetapp.dll"]