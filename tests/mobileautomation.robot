*** Settings ***
Documentation        Testes Mobile PrimeHero Experts

Library              AppiumLibrary

Test Setup           Abrir aplicativo
Test Teardown        Fechar aplicativo

*** Test Case ***
Caso de Teste 01: Pesquisar canal “Prime Experts”
    [Tags]      PESQUISAR_CANAL
    Dado que o cliente esteja na tela de Home
    E pesquise um vídeo sobre "Prime Experts"
    E acessar o canal da Prime
    Quando clicar em Inscrever-se
    Então será apresentado como Inscrito

Caso de Teste 02: Logar no YouTube
    [Tags]      AUTENTICAR
    # Abrir App
    Logar no aplicativo com a conta
    Entrar no menu “Explorar”
    Usar swipe de tela até o 10 item da tela
    Clicar no vídeo

Caso de Teste 03: Usar método Swipe na tela
    [Tags]      SWIPE-SCREEN
    # Abrir App
    Entrar no menu “Explorar”
    Usar swipe de tela até o 10 item da tela
    Clicar no vídeo

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
    
######################################
# Caso de Teste 01: Logar no YouTube #
######################################
Dado que o cliente esteja na tela de Home
    Wait Until Element Is Visible       xpath=//android.widget.ImageView[@content-desc="Conta"]
    Wait Until Element Is Visible       accessibility_id=Pesquisar

E pesquise um vídeo sobre "${PESQUISA_VIDEO}"
    Click Element                       accessibility_id=Pesquisar
    Wait Until Page Contains Element    id=search_edit_text       3s
    Input Text                          id=search_edit_text         ${PESQUISA_VIDEO}
    Press Keycode                       66

E acessar o canal da Prime
    #Wait Until Element Is Visible       accessibility_id=Prime Experts - Parceria entre Prime Control e UniBrasil - 3 minutos e 38 segundos - Ir ao canal - Prime Control - 156 visualizações - há 1 ano - assistir o vídeo
    #Click Element                       accessibility_id=Prime Experts - Parceria entre Prime Control e UniBrasil - 3 minutos e 38 segundos - Ir ao canal - Prime Control - 156 visualizações - há 1 ano - assistir o vídeo
    Wait Until Element Is Visible        xpath=(//android.widget.ImageView[@content-desc="Ir ao canal"])[1]
    Click Element At Coordinates         549     470

Quando clicar em Inscrever-se
    Wait Until Page Contains Element    xpath=//*[contains(@text,'INSCREVER-SE')]       5s
    Click Element                       xpath=//*[contains(@text,'INSCREVER-SE')]
    Wait Until Element Is Visible       accessibility_id=Cancelar inscrição de Prime Control.
    Click Element                       accessibility_id=Cancelar inscrição de Prime Control.

Então será apresentado como Inscrito
    Wait Until Element Is Visible       accessibility_id=Cancelar inscrição de Prime Control.

######################################
# Caso de Teste 02: Logar no YouTube #
######################################
Logar no aplicativo com a conta
    Wait Until Element Is Visible       accessibility_id=Conta
    Click Element                       accessibility_id=Conta
    Wait Until Element Is Visible       id=com.google.android.youtube:id/button     5s
    Click Element                       id=com.google.android.youtube:id/button
    Wait Until Element Is Visible       id=com.google.android.youtube:id/name
    Click Element                       id=com.google.android.youtube:id/name
    Wait Until Element Is Visible       class=android.widget.EditText
    Click Element                       class=android.widget.EditText
    Input Text                          class=android.widget.EditText      primeheroexpert@gmail.com
    Click Element                       class=android.widget.Button
    Wait Until Page Contains Element    xpath=//android.widget.Button[contains(@text,'Fechar')]    5s
    Click Element                       xpath=//android.widget.Button[contains(@text,'Fechar')]
    Wait Until Page Contains Element    xpath=//*[contains(@text,'PRÓXIMA')]    5s
    Click Element                       xpath=//*[contains(@text,'PRÓXIMA')]
    Wait Until Element Is Visible       xpath=//*[contains(@text,'Mostrar senha')]
    Click Element                       class=android.widget.EditText
    Wait Until Element Is Visible       class=android.widget.EditText   5
    Input Text                          class=android.widget.EditText      0o9i8u7y6t5r4e3w2q
    Click Element                       xpath=//*[contains(@text,'PRÓXIMA')]
    Wait Until Page Contains Element    xpath=//*[contains(@text,'Concordo')]    5s
    Click Element                       xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View[4]
    Wait Until Page Contains Element    xpath=//*[contains(@text,'MAIS')]       15s
    Click Element                       xpath=//*[contains(@text,'MAIS')]
    Click Element                       xpath=//*[contains(@text,'ACEITAR')]
    Wait Until Page Contains Element    accessibility_id=YouTube      20s
    Wait Until Element Is Visible       xpath=//*[contains(@text,'Início')]

###############################################
# Caso de Teste 03: Usar método Swipe na tela #
###############################################
Entrar no menu “Explorar”
    Click Element                       xpath=//*[contains(@text,'Explorar')]

Usar swipe de tela até o 10 item da tela
    Wait Until Element Is Visible       class=android.view.ViewGroup

    FOR  ${y}  IN RANGE  0  10
        Swipe  580  1500  580  700
        Sleep  1
    END

Clicar no vídeo
     Click Element At Coordinates          540    1430

    Wait Until Page Contains Element      xpath=//*[contains(@text,'#10 NOS VÍDEOS EM ALTA')]
    # Wait Until Page Contains Element      xpath=//*[contains(@text,'Money')]