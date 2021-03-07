echo "###### Atualizando o sistema #######"
sudo apt-get update
sudo apt-get install -y wget
sudo apt-get install -y unzip
echo "###### Preparando o webgrabplus #######"
sudo apt install gnupg ca-certificates
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb https://download.mono-project.com/repo/ubuntu stable-focal main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list
sudo apt update
sudo apt install mono-devel
sudo apt-get -f install
echo "###### Download webgrabplus #######"
wget http://webgrabplus.com/sites/default/files/download/SW/V3.1.0/WebGrabPlus_V3.1_install.tar.gz
ls -l
echo "###### Extrair webgrabplus #######"
tar -zxvf WebGrabPlus_V3.1_install.tar.gz
#mudar pasta .wg++ para wg
mv .wg++ wg
#echo "###### Update webgrabplus #######"
#wget http://webgrabplus.com/sites/default/files/download/SW/V2.1.11/WebGrabPlus_V2.1.11_beta_install.tar.gz
#tar -zxvf WebGrabPlus_V3.1.6_beta_install.tar.gz
#mv .wg++ update
#yes | cp -r update/bin/* wg/bin
echo "###### Instalando webgrabplus #######"
#entra na pasta wg
cd wg
#abre instalador
./install.sh
#entra na pasta bin
cd bin
#abre update
./SiteIni.Pack.Update.sh
#sai da pasta bin
cd ..
#sai da pasta wg
cd ..
#copia arquivos da pasta config/ para pasta wg
yes | cp -r config/WebGrab* wg
yes | cp -r config/mdb* wg/mdb
#entra na pasta wg
cd wg
#roda o WebGrab+Plus
echo "Rodando webgrabplus"
./run.sh
#listar arquivos
ls -l
#sair da pasta wg
cd ..
echo "###### webgrabplus instalado #######"
date
echo "Time Zone Atual:"
timedatectl | grep "Time zone"
