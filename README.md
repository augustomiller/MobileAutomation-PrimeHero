
<div align="center">
  
# Testes Mobile 📱
  
  
Objetivo 🎯  &nbsp;&nbsp;Utilizando as melhores tecnologias atuais como, Java, Appium, UIautomatorviewer Android Studio, realizei uma bateria de testes no aplicativo Youtube, para validar suas funcionalidades.
  
</div>
  
 <p align="center">
  <a href="#Tecnologias">Tecnologias</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#Documentação">Documentação</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#Variáveis-de-Ambiente">Variáveis de Ambiente</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#Instalação-do-Appium">Instalação do Appium</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#Configurando-o-Dispositivo-Físico">Configurando o Dispositivo Físico</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#Alguns-comandos-interessantes">Alguns comandos interessantes</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#License">License</a>
</p>

<p align="center">
  <a href="https://mit-license.org/">
  <img src="https://img.shields.io/static/v1?label=license&message=MIT&color=5965E0&labelColor=121214" alt="License">.
  </a>
</p>

<br>

![homeScreen](https://user-images.githubusercontent.com/990877/134563936-3498f667-9a3d-46a2-ac3d-3c3710dba50d.png)

<p align="center">
  <a href="https://developer.android.com/">Android Studio</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="https://developer.android.com/docs">Doc's</a>&nbsp;&nbsp;&nbsp;
</p>

## Tecnologias

- [JDK 8](https://www.oracle.com/br/java/technologies/javase/javase8-archive-downloads.html)
- [PyCharm](https://www.jetbrains.com/pt-br/pycharm/)
- [Appium](https://appium.io/)
- [Vysor](https://www.vysor.io/)
- [Bash](https://www.gnu.org/software/bash/)
- [Git](https://git-scm.com/)

## Documentação

- [Android Studio Docs](https://developer.android.com/docs)
- [Eclipse Docs](https://help.eclipse.org/latest/index.jsp)
- [Appium Docs](https://appium.io/docs/en/about-appium/intro/)
- [Cucumber Docs](https://cucumber.io/docs/cucumber/)

## Variáveis de Ambiente


Path do JDK
```script
/Library/Java/JavaVirtualMachines/jdk1.8.0_301.jdk
```

### Variáveis e ambiente para o uiautomator

Path das varáveis de ambiente ⇢ ~ (home)

```script
➜ vim ~/.zshrc
```
```script
uiautomator() {
        export export PATH=$JAVA_HOME/Library/Java/JavaVirtualMachines/jdk1.8.0_301.jdk/Contents/Home:$PATH
        export ANDROID_HOME=/Users/maicmiller/Library/Android/sdk
        export PATH=$PATH:$ANDROID_HOME/platform-tools:$ANDROID_HOME/build-tools:$ANDROID_HOME/tools
        /Users/maicmiller/Library/Android/sdk/tools/bin/uiautomatorviewer
}
```

## Ambiente Android Studio

1º Passo - Criar novo projeto

![1](https://user-images.githubusercontent.com/990877/134569253-c7eda8a6-f6dc-4770-8b97-4cbd4081bece.png)
![2](https://user-images.githubusercontent.com/990877/134569053-7fab890b-4732-47cb-96a8-02f7c39d0811.png)
![3](https://user-images.githubusercontent.com/990877/134569683-e311b458-66dd-4411-a50c-878eb019cb28.png)
![4](https://user-images.githubusercontent.com/990877/134570019-d0bbf3af-4c3f-407a-adb0-e81285e42668.png)

Pegamos o valor do Android SDK location para configurar o Android Home
```script
/Users/<utilizador>/Library/Android/sdk
```
### Variáveis e ambiente para o Android Home

Destino das varáveis de ambiente ⇢ ~ (home)

```script
➜ vim ~/.zshrc
```

```script
export ANDROID_HOME=//Users/<utilizador>/Library/Android/sdk
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$ANDROID_HOME/tools:$PATH
export PATH=$ANDROID_HOME/tools/bin:$PATH
export PATH=$ANDROID_HOME/emulator:$PATH
```
Verificando se funcionou
```script
source ~/.zshrc
echo $ANDROID_HOME
```

Comandos adb
```script
adb
```
```script
adb devices
```

![6](https://user-images.githubusercontent.com/990877/134571024-44e9f996-a1f3-4250-9d85-01827a0d172d.png)

Comando uiautomatorviewer
```script
sudo uiautomatorviewer
```
![7](https://user-images.githubusercontent.com/990877/134571552-bd24b3f6-12ce-4425-9cb6-9e894af14331.png)

## Criar um novo Virtual Device

![8](https://user-images.githubusercontent.com/990877/134571964-18599d79-e8de-42df-8451-5597cb1e739e.png)
![9](https://user-images.githubusercontent.com/990877/134572246-5f91c9bf-3f6f-4b4b-9c3c-81fdb73988a1.png)
![10](https://user-images.githubusercontent.com/990877/134572359-2beb66e8-3440-416c-b9d4-d04dfb437a6d.png)
![11](https://user-images.githubusercontent.com/990877/134572540-3c70d849-f8aa-49cf-a4e1-1cf9f4ad1a38.png)

### podemos fechar o Android Studio, vamos levantar o emulator via terminal.

```script
emulator @primeheroAVD &
```
![12](https://user-images.githubusercontent.com/990877/134573510-4dabb3de-78b6-46cb-9598-6530af5aa5f6.png)

## Instalação do Appium

- [Appium v1.15.0](https://github.com/appium/appium-desktop/releases/tag/v1.15.0)

opção: Appium-mac-1.15.0.dmg

![AppiumVersion15](https://user-images.githubusercontent.com/990877/134574367-71fefc9f-e8bf-4f10-9ef7-9a7585674c7d.png)

![AppiumApp](https://user-images.githubusercontent.com/990877/134574702-3787448a-0438-4833-94fd-6d6491337770.png)

### start server

Quando o Appium é iniciado ele nos fornece uma API-Rest

![AppiumStart](https://user-images.githubusercontent.com/990877/134575009-840d4ad2-0fab-4571-b611-5718268fac43.png)

# Configurando o Dispositivo Físico

* É necessário instalar o driver do celular no PC, apenas conectando-o via USB o computar instala o Driver automaticamente.
* Também é necessário habilitar o modo desenvolvedor no celular, cada modelo tem a sua forma.
* Habilitar a depuração de USB.

Instalando o Vysor

- [Vysor](https://www.vysor.io/)

![vysorDownload](https://user-images.githubusercontent.com/990877/134575975-2167a301-9b5a-4f75-a3b4-ea8424e3abe3.png)

Com o Vysor instalado e aberto, conecte o celular via cabo USB no computador.

![vysorInstalaldo](https://user-images.githubusercontent.com/990877/134576365-3465aafd-498e-4625-b903-7f48fcc919ac.png)

Dessa forma conseguimos vizualizar o dispositivo

![vysorMeuCell](https://user-images.githubusercontent.com/990877/134576760-89794863-ccce-46e7-bbd9-4a28ff420db7.png)

Acionamos o botão play para iniciar

![meuCell](https://user-images.githubusercontent.com/990877/134577300-e197bbf7-dea3-434a-8f13-bcd562ccc45a.png)

##

## Inicinado...

Com o Emulador e o Appium já iniciado, vamos clicar em Start Inspector Session 🔎

![StartInspectorSession](https://user-images.githubusercontent.com/990877/134578713-f7979a65-560d-4da5-8c8f-045fe0efc85b.png)

Vamos configurar as Desired Capabilities, essas são as informações necessárias para podermos conectar em nosso aparelho.

![DesiredCapabilities](https://user-images.githubusercontent.com/990877/134579231-e0684b9d-38db-46ad-9e48-6216751c6f0b.png)

Para encontrar o nome do nosso device via linha de comando

```script
{
  "platformName": "Android",
  "deviceName": "emulator-5554",
  "automationName": "uiautomator2",
  "appPackage": "com.google.android.deskclock",
  "appActivity": "com.android.deskclock.DeskClock"
}
```

Para encontrar os atributos necessários para popular a Desired Capabilities usaremos o App APK INFO

![ApkInfo](https://user-images.githubusercontent.com/990877/134579778-a11c94ad-6995-4275-852b-5f9de8ad2ee6.png)

Após salvarmos as configurações vamos em Start Session

![startSession](https://user-images.githubusercontent.com/990877/134580054-f01a5829-2cd4-4ad2-a5bf-7bb698e61c54.png)

* Iniciamos o Start Record, e gravamos um fluxo pequeno;
* Agora clicamos em Show/Hide Boilerplate Code, para geramos o codigo java da conexão, para usarmos em nossa Classe Java Utils.

![Boilerplate](https://user-images.githubusercontent.com/990877/134580889-fa16fca9-94cf-48b2-91bc-5049053532a1.png)

##

## Alguns comandos interessantes

Para fazer interação com o dispositivo via Shell
Com esse comando podemos acessar o dispositivo e manipular os arquivos via linha de comando

```script
adb shell
```
Comando para listar os dispositivo conectado

```script
adb devices
```
Comando para listar todos os emuladores configurados

```script
emulator -list-avds
```
Comando para localizar o arquivo do emulator.

```script
cd $ANDROID_HOME                                 

Library/Android/sdk 
```

Comando para listar todos os pacotes do dispositivo

```script
pm list packages
```

Comando para descobrir o App Activity

```script
dumpsys package | grep -Eo "^[[:space:]]+[0-9a-f]+[[:space:]]+com.sec.android.app.popupcalculator/[^[:space:]]+" | grep -oE "[^[:space:]]+$"
```
Comando para inciar um App

```script
am start -n <activity do App>
am start -n com.sec.android.app.popupcalculator/.calculator
```

##

## License

<div align="center">
  
<p>This project is licensed under the MIT License. See the
  <a href="https://mit-license.org/">
  <img src="https://img.shields.io/static/v1?label=license&message=MIT&color=5965E0&labelColor=121214" alt="License">
  </a> file for details.</p>
<p>Made with&nbsp;💙 &nbsp;by Maic Miller</p>
  
<div>
