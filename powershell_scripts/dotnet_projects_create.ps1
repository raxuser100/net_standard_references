dotnet new console --name console_core2.0 --framework netcoreapp2.0
dotnet new classlib --name classlib_netstandard2.0 --framework netstandard2.0
dotnet new classlib --name classlib_net461 --target-framework-override net461

# netstandard2.0 --> net461 link
dotnet new classlib --name classlib_netstandard2.0_ref_classLib_net461 --framework netstandard2.0

<#
add project a reference 
netstandard2.0 --> net461 link

this returns an error

 cannot be added due to 
incompatible targeted frameworks between the two projects. Please review the project you are trying to add and verify that is compatible with the following targets:
At line:1 char:1


Works if we edit classlib_net461.csproj and add multiple targets including netstandard2.0

 <PropertyGroup>
    <TargetFrameworks>net461;netstandard2.0</TargetFrameworks>
  </PropertyGroup>


#>

dotnet add .\classlib_netstandard2.0_ref_classLib_net461\classlib_netstandard2.0_ref_classLib_net461.csproj reference .\classlib_net461\classlib_net461.csproj