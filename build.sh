echo "###### Atualizando o sistema #######"
apt-get update -qq
apt-get install -qq git
apt-get install -y wget
apt-get install -y unzip
echo "###### Preparando o webgrabplus #######"
apt-get install -y mono-runtime libmono-system-data4.0-cil libmono-system-web4.0-cil
echo "###### Download webgrabplus #######"
wget http://webgrabplus.com/sites/default/files/download/SW/V2.1.0/WebGrabPlus_V2.1_install.tar.gz
ls -l
echo "###### Extrair webgrabplus #######"
tar -zxvf WebGrabPlus_V2.1_install.tar.gz
mv .wg++ wg
echo "###### Update webgrabplus #######"
wget http://webgrabplus.com/sites/default/files/download/SW/V2.1.11/WebGrabPlus_V2.1.11_beta_install.tar.gz
tar -zxvf WebGrabPlus_V2.1.11_beta_install.tar.gz
mv .wg++ update
yes | cp -r update/bin/* wg/bin
cd wg
echo "###### Instalando webgrabplus #######"
./install.sh
cd bin
./SiteIni.Pack.Update.sh
cd ..
cd ..
yes | cp -r config/WebGrab* wg
yes | cp -r config/mdb* wg/mdb
cd wg
./run.sh
ls -l
cd ..
echo "###### webgrabplus instalado #######"
