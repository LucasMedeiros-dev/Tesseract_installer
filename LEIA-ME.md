# Guia de instalação Tesseract OCR - PT-BR / [EN](https://github.com/FoxTechL/tess_ocr_guide/blob/main/README.md)
## Motivação
Eu tive uma certa dificuldade em reunir todas as informações em um só lugar de começo,
com muitos códigos fonte a compilar livrarias acabei optando por criar meu próprio script
para agilizar esse processo.
## Requerimentos
Você precisa ter o git instalado para utilizar este script.
Instruções abaixo:
```
sudo apt-get install git -y
```
## Como usar
```
git clone https://github.com/FoxTechL/tess_ocr_guide
cd tess_ocr_guide
chmod +x install_tesseract.sh
./install_tesseract.sh
```
# Plataformas testadas
```
debian 11
kernel = 5.15.104-1-pve
Python3 = 3.9.2
```
# Notas
Se houver algum problema com relação a permissões de usuário tente usar sudo -i e depois executar o arquivo.
```
sudo -i 
./install_tesseract.sh
```
Sintam-se livres para enviar perguntas e sugestões de melhorias na aba de issues.

Esse script deve demorar de 20 - 40 minutos a depender da sua máquina. Ele compila do código fonte.
Por favor seja paciente e aguarde.

Todos os registros estão armazenados na pasta /log dentro da raiz.

# Alerta
		
		SE VOCÊ USAR ESTE SOFTWARE EM UM VÍDEO OU MATERIAL EDUCACIONAL
		VOCÊ DEVE ME DAR OS CRÉDITOS CITANDO:
		
		Fonte: https://github.com/LucasMedeiros-dev, LUCAS V. MEDEIROS, 2023.
		
		ESTE SOFTWARE É FORNECIDO COMO ESTÁ, SEM ABSOLUTAMENTE NENHUMA GARANTIA EXPRESSA
		OU IMPLÍCITA. QUALQUER USO É POR SUA CONTA E RISCO.
