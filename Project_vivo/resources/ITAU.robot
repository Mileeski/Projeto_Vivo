*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${ITAU_VIEW_ELEMENT}                           //img[contains(@alt,'/static/media/app_pagbank.5e2f1f08.svg')]
${ITAU_CLICK_CONCORDAR_E_ACEITAR}              //*[@id="app-root"]/div[5]/div/button/div
${ITAU_CLICK_ELEMENT}                          //img[contains(@alt,'/static/media/banco_itau.78c9a4a9.svg')]
${ITAU_TITLE}                                  Como funciona a recarga de celular pelo Itaú? | Atendimento Itaú
${ITAU_VIEW_ELEMENT_TEXT}                      //img[contains(@class,'d-none d-lg-block logo-primary')]

*** Keywords ***
 Quando clico no icone do banco "itau"
     Scroll Element Into View            ${ITAU_VIEW_ELEMENT}
     Wait Until Element Is Visible       ${ITAU_VIEW_ELEMENT}
     Wait Until Element Is Visible       ${ITAU_CLICK_ELEMENT}
     Set Selenium Timeout                value=15 seconds  
     Click Element                       ${ITAU_CLICK_CONCORDAR_E_ACEITAR}
     Click Element                       ${ITAU_CLICK_ELEMENT}
     Wait Until Element Is Visible       //button[contains(@onclick,'checkTermo()')]
     Click Element                       //button[contains(@onclick,'checkTermo()')]
     Capture Page Screenshot
     #Element Text Should Be              //h1[@class='title-d-container__title'][contains(.,'Como funciona a recarga de celular pelo Itaú?')]    Como funciona a recarga de celular pelo Itaú?
     #Title Should Be                     ${ITAU_TITLE}
#Então deve redirecionar para à página do banco
     #Go To                               https://www.itau.com.br/atendimento-itau/para-voce/conta-corrente/como-funciona-a-recarga-de-celular-pelo-itau
     #Wait Until Element Is Visible       //button[contains(@onclick,'checkTermo()')]
     #Click Element                       //button[contains(@onclick,'checkTermo()')]
     #Element Text Should Be              //h1[@class='title-d-container__title'][contains(.,'Como funciona a recarga de celular pelo Itaú?')]    Como funciona a recarga de celular pelo Itaú?
     #Title Should Be                     ${ITAU_TITLE}


     
   
     
    
    



