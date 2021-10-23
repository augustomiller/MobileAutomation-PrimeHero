*** Settings ***
Documentation        Testes Mobile

Library              AppiumLibrary

Test Setup           Abrir aplicativo
Test Teardown        Fechar aplicativo

*** Test Case ***
Caso de Teste 01: Pesquisar canal “Prime Experts”
    [Tags]      PESQUISAR
    Dado que o cliente esteja na tela de Home
    E pesquise um vídeo sobre "Prime Experts"
    E acessar o canal da Prime
    Quando clicar em Inscrever-se
    Então será apresentado como Inscrito

Caso de Teste 02: Logar no YouTube
    [Tags]      LOGAR
    Abrir App
    Logar no aplicativo com a conta x
    # Entrar no menu “Explorar”
    # Usar swipe de tela até o 10 item da tela
    # Clicar no vídeo

*** Keywords ***
Abrir aplicativo
    Set Appium Timeout              60
    Open Application                http://localhost:4723/wd/hub
    ...                             platformName=Android
    ...                             deviceName=RX8M80897QT
    ...                             automationName=uiautomator2
    ...                             appPackage=com.google.android.youtube
    ...                             appActivity=com.google.android.youtube.HomeActivity
    ...                             autoGrantPermissions=true

Fechar aplicativo
    Capture Page Screenshot
    Close Application

# Caso de Teste 01: Logar no YouTube
Dado que o cliente esteja na tela de Home
    Wait Until Element Is Visible       xpath=//android.widget.ImageView[@content-desc="Pesquisar"]
    Wait Until Element Is Visible       accessibility_id=YouTube

E pesquise um vídeo sobre "${​​​PESQUISA}"
    Click Element       accessibility_id=Pesquisar
    Input Text          id=search_edit_text         ${​​​PESQUISA}​​​
    Press Keycode       66

E acessar o canal da Prime
    Wait Until Element Is Visible                   accessibility_id=Prime Experts - Parceria entre Prime Control e UniBrasil - 3 minutos e 38 segundos - Ir ao canal - Prime Control - 90 visualizações - há 1 ano - assistir o vídeo
    Click Element                                   accessibility_id=Prime Experts - Parceria entre Prime Control e UniBrasil - 3 minutos e 38 segundos - Ir ao canal - Prime Control - 90 visualizações - há 1 ano - assistir o vídeo

Quando clicar em Inscrever-se
    Wait Until Element Is Visible                   accessibility_id=Inscreva-se em Prime Control.
    Click Element                                   accessibility_id=Inscreva-se em Prime Control.
    Click Element                                   accessibility_id=Inscreva-se em Prime Control.

Então será apresentado como Inscrito
    Wait Until Element Is Visible                   accessibility_id=Cancelar inscrição de Prime Control.

 
######################################
# Caso de Teste 02: Logar no YouTube #
######################################
Abrir App
    Set Appium Timeout              60
    Open Application                http://localhost:4723/wd/hub
    ...                             platformName=Android
    ...                             deviceName=RX8M80897QT
    ...                             automationName=uiautomator2
    ...                             appPackage=com.google.android.youtube
    ...                             appActivity=com.google.android.youtube.HomeActivity
    ...                             autoGrantPermissions=true
Logar no aplicativo com a conta x
    Wait Until Element Is Visible        accessibility_id=Conta
    Click Element                        accessibility_id=Conta

    Click Element                        xpath=//android.widget.TextView[@text='FAZER LOGIN']
    Input Element       id=identifierId     email@gmail.com
    




# Entrar no menu “Explorar”
# Usar swipe de tela até o 10 item da tela
# Clicar no vídeo

###############################################
# Caso de Teste 03: Usar método Swipe na tela #
###############################################

# Abrir App
# Entrar no menu “Explorar”
# Usar swipe de tela até o 10 item da tela
# Clicar no vídeo 