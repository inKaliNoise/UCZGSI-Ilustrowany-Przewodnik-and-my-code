
# Instrukcja instalacyjna dla systemu macOS

Poniższe instrukcje pozwolą Ci wygodnie korzystać z interaktywnych notatników Jupyter i bibliotek głębokiego uczenia. Środowisko Jupyter działa w kontenerze Docker, co daje pewność, że są dostępne wszystkie potrzebne zależności, które nie kolidują z oprogramowaniem zainstalowanym w systemie operacyjnym.

## Instalacja

1. Otwórz aplikację Terminal ([jak tutaj](http://www.wikihow.com/Open-a-Terminal-Window-in-Mac)).
2. Aby zainstalować oprogramowanie w katalogu domowym (zalecany, domyślny sposób), wykonaj następujące operacje:
	* Wpisz`cd ~` w wierszu poleceń.
	* Naciśnij klasisz **return**.
3. Pobierz pliki załączone do książki.
4. Zainstaluj [Docker "Stable channel"](https://docs.docker.com/docker-for-mac/install/) (jeżeli używasz już starszej wersji Dockera i napotkałeś problemy z instalacją, zaktualizuj środowisko).
5. Uruchom środowisko Docker, np. klikając Finder, następnie folder Aplikacje, a następnie dwukrotnie klikając ikonę Docker.
6. Zbuduj obraz Docker za pomocą polecenia `sudo docker build -t dli-stack .` Zwróć uwagę, że jeżeli nie wpiszesz kropki na końcu, pojawi się błąd.
7. Uruchom obraz Docker za pomocą polecenia `sudo docker run -v $(pwd):/home/jovyan/work -it --rm -p 8888:8888 -p 6006:6006 dli-stack` (możesz sobie wyobrazić, że obraz jest przepisem, a kontener ciatem upieczonym wedłyg tego przepisu). Dla Twojej wygody dostępny jest skrypt  **rundocker.sh** wykonujący odpowiednie polecenia, więc możesz po prost wpisać `source rundocker.sh`. To polecenie musisz wpisać w katalogu, w którym znajdują się pliki repozytorium.
8. Skopiuj adres URL wygenerowany przez kontener Docker (powinien zaczynać się od `http://localhost:8888/?token=` i znajdować się w dolnej części okna terminala) i wklej go w dowolnej przeglądarce, np Chrome.

## Zamknięcie

Aby zamknąć notatnik Jupyter, wróć do terminala, w którym go uruchomiłeś, i naciśnij klawisze **control** i **c**.

## Ponowne uruchomienie

Aby ponownie uruchomić notatnik, wykonaj kroki 7 i 8.
