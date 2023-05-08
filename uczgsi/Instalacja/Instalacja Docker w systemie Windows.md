# Instrukcja instalacyjna dla systemu Windows

Poniższe instrukcje pozwolą Ci wygodnie korzystać z interaktywnych notatników Jupyter i bibliotek głębokiego uczenia. Środowisko Jupyter działa w kontenerze Docker, co daje pewność, że są dostępne wszystkie potrzebne zależności, które nie kolidują z oprogramowaniem zainstalowanym w systemie operacyjnym.

Pamiętaj, że aby móc korzystać ze środowiska Docker w systemie Windows, musisz posiadać 64-bitową wersję Windows 10 Professional lub Enterprise.

1. Zainstaluj [Docker Community Edition for Windows](https://store.docker.com/editions/community/docker-ce-desktop-windows). Może być konieczne wylogowanie i ponowne uruchomienie systemu
2. Pobierz pliki załączone do książki i zapamiętaj nazwę katalogu, w którym je zapisałeś.
3. Kliknij prawym przyciskiem ikonę Docker, wybierz polecenie "Settings...", a następnie "Shared Drives". Sprawdź, czy napęd jest współdzielony. W tym momencie może być konieczne wpisanie hasła do systemu Windows i ponowne uruchomienie środowiska Docker.
4. Uruchom wiersz PowerShell i przejdź do katalogu, w którym zapisałeś pliki.
5. Zbuduj obraz Docker za pomocą polecenia `sudo docker build -t dli-stack .` Zwróć uwagę, że jeżeli nie wpiszesz kropki na końcu, pojawi się błąd.
6. Uruchom obraz Docker za pomocą polecenia `sudo docker run -v $(pwd):/home/jovyan/work -it --rm -p 8888:8888 -p 6006:6006 dli-stack` (możesz sobie wyobrazić, że obraz jest przepisem, a kontener ciatem upieczonym wedłyg tego przepisu). Dla Twojej wygody dostępny jest skrypt  **rundocker.sh** wykonujący odpowiednie polecenia, więc możesz po prost wpisać `source rundocker.sh`. To polecenie musisz wpisać w katalogu, w którym znajdują się pliki repozytorium.
7. Skopiuj adres URL wygenerowany przez kontener Docker (powinien zaczynać się od `http://localhost:8888/?token=` i znajdować się w dolnej części okna terminala) i wklej go w dowolnej przeglądarce, np Chrome.
