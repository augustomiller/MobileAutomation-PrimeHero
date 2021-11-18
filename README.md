
<div align="center">
  
# Programa Prime Hero Academy
  
## Testes Mobile 📱
  
  
Objetivo 🎯  &nbsp;&nbsp;Utilizando as melhores tecnologias atuais como, Robot Framework, Appium, UIautomatorviewer Android Studio, realizei uma bateria de testes no aplicativo Youtube, para validar suas funcionalidades.
  
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

![robot](https://user-images.githubusercontent.com/990877/138452988-d59ff453-46e6-46a3-94c7-555b6346d380.png)

![Screen Shot 2021-10-24 at 09 51 08 (2)](https://user-images.githubusercontent.com/990877/138594990-b3c041fb-ab23-4318-848c-f007385524a1.png)


<p align="center">
  <a href="https://developer.android.com/">Android Studio</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="https://developer.android.com/docs">Doc's</a>&nbsp;&nbsp;&nbsp;
</p>

## Tecnologias

- [JDK 8](https://www.oracle.com/java/technologies/downloads/#java8-windows)
- [Android Studio](https://developer.android.com/studio)
- [Appium](https://appium.io/)
- [Vysor](https://www.vysor.io/)
- [Bash](https://www.gnu.org/software/bash/)
- [Git](https://git-scm.com/)

## Documentação

- [Android Studio Docs](https://developer.android.com/docs)
- [Eclipse Docs](https://help.eclipse.org/latest/index.jsp)
- [Appium Docs](https://appium.io/docs/en/about-appium/intro/)

## Steps

- [Instalar o JDK8](https://www.oracle.com/java/technologies/downloads/#java8-windows)

## PRIMEIRO PASSO

## Variáveis de Ambiente

Windows + R
```script
control
```
Após abrir o Painel de controle vamos em:
Sistema e Segurança -> Sistema -> Configuração Avançada do Sistema -> Variáveis de Ambiente.

### JDK

É o caminho onde o JDK foi instalado: C:\Program Files\Java\jdk1.8.0_311

![JAVA_HOME](https://user-images.githubusercontent.com/990877/142299453-6ee32b96-fde1-446d-b056-7fbc3dd19866.png)

Vamos fazer a mesma coisa para a Nova Variável de Sistema

![JAVA_HOME_SISTEMA](https://user-images.githubusercontent.com/990877/142299838-5142c036-bb51-4cba-ba17-b44e00acf468.png)

### Vamos efetuar o mesmo procedimento para a JRE

### JRE

É o caminho onde o JRE foi instalado: C:\Program Files\Java\jre1.8.0_311

Variável do Usuário
![JRE_HOME](https://user-images.githubusercontent.com/990877/142300367-c9f979cd-ca30-47b4-88b1-51adadac1c54.png)

Variável de Sistema


![JRE_HOME_SISTEMA](https://user-images.githubusercontent.com/990877/142300578-53db6483-c1fa-4d4e-8219-91b3618627ad.png)


## SEGUNDO PASSO, CONFIGURAR O PATH DA PASTA BIN DO JDK.

Variável de Ambiente
![JAVA_HOME_bin](https://user-images.githubusercontent.com/990877/142301073-94ca13c2-9372-4e15-818f-83c7b00b57a0.png)

Mesmo procedimento para a Variável de Sistema
![JAVA_HOME_bin_sistema](https://user-images.githubusercontent.com/990877/142301326-40023eb6-c831-4e5e-bd77-0aef3f4b5c1b.png)
![ok](https://user-images.githubusercontent.com/990877/142301426-fd27ca8b-f14d-4a02-9019-b937029f69c4.png)

Vamos verificar a instalação do Java no terminal:
```script
java -version
```
![java-version](https://user-images.githubusercontent.com/990877/142301705-e1079d76-75fe-4731-986d-0cc23eea9687.png)

## Instalação do Android Studio

- [Android Studio](https://developer.android.com/studio)

Efetue a instalação normalmente.

## Ambiente Android Studio

1º Passo - Criar novo projeto

![1](https://user-images.githubusercontent.com/990877/134569253-c7eda8a6-f6dc-4770-8b97-4cbd4081bece.png)
![2](https://user-images.githubusercontent.com/990877/134569053-7fab890b-4732-47cb-96a8-02f7c39d0811.png)
Clique no botão SDK MAnager
![3](https://user-images.githubusercontent.com/990877/134569683-e311b458-66dd-4411-a50c-878eb019cb28.png)
![4](https://user-images.githubusercontent.com/990877/142311556-87e3c582-37a3-494f-a4b9-cf63e43e0feb.png)

Pegamos o valor do Android SDK location para configurar o Android Home
No MacOSX
```script
/Users/<utilizador>/Library/Android/sdk
```

### Variáveis e ambiente para o Android Home

## No MacOSX

Destino das varáveis de ambiente ⇢ ~ (home)

Path do JDK no MacOSX

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

```script
➜ vim ~/.zshrc
```

```script
export ANDROID_HOME=//Users/<utilizador>/Library/Android/sdk
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$ANDROID_HOME/tools:$PATH
export PATH=$ANDROID_HOME/tools/bin:$PATH
export PATH=$ANDROID_HOME/tools/lib:$PATH
export PATH=$ANDROID_HOME/emulator:$PATH
```
Verificando se funcionou
```script
source ~/.zshrc
echo $ANDROID_HOME
```

## No Windows

SDK Location no windows
```script
C:\Users\maicm\AppData\Local\Android\Sdk
```
## Configurar as Variáveis de ambiente do Android Home

Variáveis de Ambiente

![VA-ANDROIDHOME](https://user-images.githubusercontent.com/990877/142318359-c8121bce-5d5c-48ba-b0c4-6cf3d01b1a23.png)

Variáveis de Sistema

![VA-ANDROIDHOME-SISTEMA](https://user-images.githubusercontent.com/990877/142319924-20458ffd-602d-4ceb-b387-7d32ff53b0dd.png)

Agora vamos adicionar as seguintes variáveis nos Path de Variaveis Ambiente:

```script
%ANDROID_HOME%\tools
%ANDROID_HOME%\tools\bin
%ANDROID_HOME%\platform-tools
```
![VAAH](https://user-images.githubusercontent.com/990877/142323409-5e718cf7-d78b-4c21-be8c-e48ee160881e.png)


Agora vamos adicionar as seguintes variáveis nos Path de Variaveis de Sistema:

```script
%ANDROID_HOME%\tools
%ANDROID_HOME%\tools\bin
%ANDROID_HOME%\platform-tools
```
![VAAH-sis](https://user-images.githubusercontent.com/990877/142326668-76abc984-fb9d-4623-8447-a3a9f6e05af3.png)

### Checando a instalação

No Pronpt de Comando digite:
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
No windows
```script
uiautomatorviewer
```

## Criar um novo Virtual Device

![8](https://user-images.githubusercontent.com/990877/134571964-18599d79-e8de-42df-8451-5597cb1e739e.png)
![9](https://user-images.githubusercontent.com/990877/134572246-5f91c9bf-3f6f-4b4b-9c3c-81fdb73988a1.png)
![10](https://user-images.githubusercontent.com/990877/134572359-2beb66e8-3440-416c-b9d4-d04dfb437a6d.png)
![11](https://user-images.githubusercontent.com/990877/134572540-3c70d849-f8aa-49cf-a4e1-1cf9f4ad1a38.png)

### Podemos fechar o Android Studio, vamos levantar o emulator via terminal.

Vamos listar nossas AVD's:

```script
emulator -list-avds
```
Vamos executar nossa AVD via terminal (Requer menos processamento do seu PC ;) )
OBS:. Para executar esse comando precisamos estar dentro da pasta de origem do emulator!

Ex: C:\Users\maicm\AppData\Local\Android\Sdk\tools>

```script
emulator @Seu_AVD
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

Com o Emulador e o Appium já iniciado, vamos clicar em Start Inspector Session

![Screen Shot 2021-10-24 at 10 02 01 (2)](https://user-images.githubusercontent.com/990877/138595385-6055555c-def7-4a35-bacf-e08d3aa6b0ad.png)

Vamos configurar as Desired Capabilities, essas são as informações necessárias para podermos conectar em nosso aparelho.

![DesiredCapabilities](https://user-images.githubusercontent.com/990877/138595283-36099ab4-e0aa-4f1d-88f0-1a90f400ef27.png)

```script
{
  "platformName": "Android",
  "deviceName": "RX8M80897QT",
  "automationName": "uiautomator2",
  "appPackage": "com.google.android.youtube",
  "appActivity": "com.google.android.youtube.HomeActivity",
  "autoGrantPermissions": "true"
}
```

Para encontrar os atributos necessários para popular a Desired Capabilities usaremos o App APK INFO

![ApkInfo](https://user-images.githubusercontent.com/990877/138595237-cb72ffec-3ee3-4f06-a0e5-fa62a6f6e835.png)

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

![Thats Robot](https://user-images.githubusercontent.com/990877/129357114-76c16f53-b485-4c59-b33a-5975a32e083b.png)

## License

<div align="center">
  
<p>This project is licensed under the MIT License. See the
  <a href="https://mit-license.org/">
  <img src="https://img.shields.io/static/v1?label=license&message=MIT&color=5965E0&labelColor=121214" alt="License">
  </a> file for details.</p>
<p>Made with&nbsp;💙 &nbsp;by Maic Miller</p>
  
<div>
