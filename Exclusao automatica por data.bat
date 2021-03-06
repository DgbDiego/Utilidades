:menu
@cls
@echo ---------------------------------------
@echo ---------------------------------------
@echo ----------EXCLUSAO AUTOMATICA----------
@echo ----------------POR DATA---------------
@echo ---------------------------------------
@echo --ATENCAO:
@echo --Editar o codigo com o endereco da pasta em que
@echo --estao os arquivos a serem excluidos na secao *startcode* desse codigo.
@echo --Colocar tambem a "idade_dos_arquivos".
@echo --
@echo --Ex. Para excluir arquivos com mais de 3 dias
@echo --de idade, colocar numero 3 como criterio.
@echo ---------------------------------------
@echo.
@echo forfiles -p "C:Endereço_da_pasta" -d -"idade_dos_arquivos" -c "cmd /c del /f /q @path"
@echo.
@echo.
@echo.
@echo -----Deseja iniciar a exclusao?-----
@echo ---
@echo --- (S) Sim
@echo --- (N) Nao
@echo ---                  
@echo ---
@set /p opcao="---Escolha uma opcao: " @echo.
@echo ---------------------------------------
@echo ---------------------------------------
@echo.
@echo.
@if %opcao% == n goto sair
@if %opcao% == s goto startcode

:sair
@echo.
@echo --Finalizando sem exclusao--
@echo.
@pause
@exit

:startcode
@forfiles -p "C:Endereço_da_pasta" -d -"idade_dos_arquivos" -c "cmd /c del /f /q @path"
@echo.
@echo --FINALIZADO--
@echo.
@pause.
