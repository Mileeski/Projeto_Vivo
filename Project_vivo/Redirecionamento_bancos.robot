*** Settings ***
Resource        ./resources/Resource.robot
Resource        ./resources/Home.robot
Resource        ./resources/ITAU.robot
Test Setup       Abrir navegador    
#Test Teardown    Fechar navegador
*** Test Cases ***
Caso de teste 01: Redirecionar banco itau
    Home.Dado que acesso página home portal de recarga vivo
    ITAU.Quando clico no icone do banco "itau"
    #ITAU.Então deve redirecionar para à página do banco


#Caso de teste 02: Redirecionar banco do brasil
    #Dado que acesso página home portal de recarga vivo
    #Quando clico no icone do banco "do brasil"
    #Então deve redirecionar para à página do banco


#Caso de teste 03: Redirecionar banco bradesco
    #Dado que acesso página home portal de recarga vivo
    #Quando clico no icone do banco "bradesco"
    #Então deve redirecionar para à página do banco


#Caso de teste 04: Redirecionar banco banrisul
    #Dado que acesso página home portal de recarga vivo
    #Quando clico no icone do banco "banrisul"
    #Então deve redirecionar para à página do banco

#Caso de teste 05: Redirecionar banco santander
    #Dado que acesso página home portal de recarga vivo
    #Quando clico no icone do banco "santander"
    #Então deve redirecionar para à página do banco

#Caso de teste 06: Redirecionar banco caixa
    #Dado que acesso página home portal de recarga vivo
    #Quando clico no icone do banco "caixa"
    #Então deve redirecionar para à página do banco

#Caso de teste 07: Redirecionar banco next
    #Dado que acesso página home portal de recarga vivo
    #Quando clico no icone do banco "next"
    #Então deve redirecionar para à página do banco

