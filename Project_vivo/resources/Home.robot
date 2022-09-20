*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${HOME_URL}            https://recarga.vivo.com.br/recarga
${HOME_TITLE}          Recarga Vivo Online: Coloque Crédito e Ganhe Bônus | Vivo
${HOME_TOPMENU}        //*[@id="app-root"]/div[3]/div/header/div/div/div[1]/h6[1]



*** Keywords ***
Dado que acesso página home portal de recarga vivo
    Go To                            ${HOME_URL} 
    Wait Until Element Is Visible    ${HOME_TOPMENU}
    Title Should Be                  ${HOME_TITLE}
