unit AppUnit2;

interface

uses
  Winapi.Windows,
  System.SysUtils;

procedure CallIntoDLL;

implementation

type TFooProc = procedure; STDCALL;

procedure CallIntoDLL;
begin
  var lib := LoadLibrary('SomeDLL.dll');
  Assert(lib<> 0);

  var proc := TFooProc(GetProcAddress(lib, 'Foo'));
  Assert(Assigned(proc));
  proc();

  FreeLibrary(lib);
end;

end.
