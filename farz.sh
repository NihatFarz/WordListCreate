#!/bin/bash


start(){
	clear
	echo -e "\e[33m███████╗ █████╗ ██████╗ ███████╗  \e[31mDeveloper: \e[37mNihat 「 FARZ 」\n\e[33m██╔════╝██╔══██╗██╔══██╗╚══███╔╝  \e[31mİnstagram: \e[37mNihatFarz\n\e[33m█████╗  ███████║██████╔╝  ███╔╝   \e[31mTelegram: \e[37mNihatFarz\n\e[33m██╔══╝  ██╔══██║██╔══██╗ ███╔╝    \e[31mGitHub: \e[37mNihatFarz\n\e[33m██║     ██║  ██║██║  ██║███████╗  Tool Adı: WordListCreate\n\e[33m╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝\n\n\n"





	rm -rf wordlist.txt	
	cd Lib/ && rm -rf kayit.php
	read -p $'\e[31m[\e[32m!\e[31m]\e[37mAdı : ' adi
	read -p $'\e[31m[\e[32m!\e[31m]\e[37mSoyadı : ' soyad
	read -p $'\e[31m[\e[32m!\e[31m]\e[37mDoğum Tarixi : ' dogumtarih
	read -p $'\e[31m[\e[32m!\e[31m]\e[37mDoğum İli : ' dogumyilii
	read -p $'\e[31m[\e[32m!\e[31m]\e[37mLəqəbi : ' lakapi
	read -p $'\e[31m[\e[32m!\e[31m]\e[37mAna Adı : ' annei
	read -p $'\e[31m[\e[32m!\e[31m]\e[37mAta Adı : ' babai
	read -p $'\e[31m[\e[32m!\e[31m]\e[37mQardaş(Bacı) Adı : ' kardesi
	sleep 1
	clear	
	read -p $'\e[31m[\e[32m!\e[31m]\e[37mSevgilisinin Adı : ' sevgilii
	read -p $'\e[31m[\e[32m!\e[31m]\e[37mSevgilsinin Soyadı : ' sevsoyad
	read -p $'\e[31m[\e[32m!\e[31m]\e[37mSevgili Olduğu Tarix : ' sevtarih
	read -p $'\e[31m[\e[32m!\e[31m]\e[37mSevgili Olduğu İl : ' sevyil
	read -p $'\e[31m[\e[32m!\e[31m]\e[37mŞəhər : ' sehiri
	sleep 1
	clear
	read -p $'\e[31m[\e[32m!\e[31m]\e[37mMaşının nömrəsi  : ' plaka
	read -p $'\e[31m[\e[32m!\e[31m]\e[37mTuttuğu Futbol Klubu : ' takimi
	read -p $'\e[31m[\e[32m!\e[31m]\e[37mQısa Adı (gs,fb,bjk) : ' kisatakim
	read -p $'\e[31m[\e[32m!\e[31m]\e[37mKlubun Quruluş İli : ' takimyil
	read -p $'\e[31m[\e[32m!\e[31m]\e[37mTelefon Nömrəsi : ' numara
	read -p $'\e[31m[\e[32m!\e[31m]\e[37mAnasının Telefon Nömrəsi : ' anneteli
	read -p $'\e[31m[\e[32m!\e[31m]\e[37mAtasının Telefon Nömrəsi : ' babateli
	read -p $'\e[31m[\e[32m!\e[31m]\e[37mQardaşının Telefon Nömrəsi : ' kardesteli
	read -p $'\e[31m[\e[32m!\e[31m]\e[37mSevgilisinin Telefon Nömrəsi : ' sevtel
	read -p $'\e[31m[\e[32m!\e[31m]\e[37mŞəxsin Şəxsiyyət Vəsiqə Seriyası : ' tcno
	read -p $'\e[31m[\e[32m!\e[31m]\e[37mTəxmin Etdiyiniz Şifrəsi : ' eskisifrei

	
	echo "
	<?php
	\$ad = '$adi';
	\$soyadad = '$soyad';
	\$lakap = '$lakapi';
	\$anne = '$annei';
	\$baba = '$babai';
	\$kardes = '$kardesi';
	\$sevgili = '$sevgilii';
	\$sevgilisoyad = '$sevsoyad';
	\$dogumtarihi = '$dogumtarih';
	\$dogumyili = '$dogumyilii';
	\$cikmayili = '$sevyil';
	\$cikmatarihi = '$sevtarih';
	\$sehir = '$sehiri';
	\$takim = '$takimi';
	\$takimtarihi = '$takimyil';
	\$takimkisa = '$kisatakim';
	\$plaka = '$plaka';
	\$eskisifre = '$eskisifrei';
	\$tel = '$numara';
	\$annetel = '$anneteli';
	\$babatel = '$babateli';
	\$kardestel = '$kardesteli';
	\$sevgilitel = '$sevtel';
	\$tckimlikno = '$tcno';?>" >> kayit.php 

	php olanak-list.php
	php ad-list.php
	php anne-list.php
	php annetel-list.php	
	php baba-list.php
	php babatel-list.php
	php cikmatarihi-list.php
	php cikmayili-list.php
	php dogumyili-list.php
	php eskisifre-list.php
	php kardes-list.php
	php kardestel-list.php
	php lakap-list.php
	php plaka-list.php
	php sehir-list.php
	php sevgili-list.php
	php sevgilisoyad-list.php
	php sevgilitel-list.php
	php soyad-list.php
	php takim-list.php
	php takimkisa-list.php
	php takimtarihi-list.php
	php tckimlikno-list.php
	php tel-list.php

	echo -e '\e[32mWordList Hazırdı : \e[37mwordlist.txt'




}



if [[ -e "Lib/ok.txt" ]]; then

	if [[ -e "wordlist.txt" ]]; then
		clear
		read -p $'\e[31m[\e[32m!\e[31m]\e[37mƏvvəl yaratdığınız bir Wordlist var!\nYeni bir wordlist yaratmaq istəyirsiniz? [B,X] : ' yeni
		if [[ $yeni == "B" || $yeni == "b" ]]; then					
			start
		elif [[ $yeni == "X" || $yeni == "x" ]]; then
			clear
			echo -e "Xeyr 'i seçtiniz.Əvvəlki Wordlist istifadə edilməyə davam ediləcək."
		else
			clear
			echo -e "Zəhmət olmasa (B ,'Bəli')  (X ,'Xeyr') seçimlərdən birini seçin! "
			sleep 3
			bash farz.sh	
		fi
	else
		start	
	fi
else 
apt install php -y 
clear
cd Lib/
echo "Bu Tool Nihat 「 FARZ 」 Tarafından Kodlaşdrılıb...." >> ok.txt
cd ..
bash farz.sh	
fi
