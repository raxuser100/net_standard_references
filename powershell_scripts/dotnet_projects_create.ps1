dotnet new console --name console_core2.0 --framework netcoreapp2.0
dotnet new classlib --name classlib_netstandard2.0 --framework netstandard2.0
dotnet new classlib --name classlib_net461 --target-framework-override net461

# netstandard2.0 --> net461 link
dotnet new classlib --name classlib_netstandard2.0_ref_classLib_net461 --framework netstandard2.0