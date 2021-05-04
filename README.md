# Delphi-RSP-33891
Minimal working example for Delphi RSP-33891

Steps to repoduce in Delphi 10.4.2 with patch 1-3:


1. Clone the MWE repo
2. Open the project group in delphi
3. Build both projects
4. Restart delphi.
5. Set breakpoint in DllUnit2.pas in line 12
6. Build Application.exe
7. Start debugging (F9)
8. When the breakpoint was hit the callstack should show that only the units of the Application.exe project have debug symbols.

9. Stop debugging
10. Build SomeDll.dll
11. Start debugging (F9)
12. When the breakpoint was hit the callstack should show the opposite situation.

13. Stop debugging
14. Change the unit output directory for both projects from .\compiled to the default value of .\$(Platform)\$(Config)
14b. Alternatively: you can copy the dcus from .\compiled into .\$(Platform)\$(Config) for the same effect
15. Start debugging (F9)
16. Now all symbols are available.
