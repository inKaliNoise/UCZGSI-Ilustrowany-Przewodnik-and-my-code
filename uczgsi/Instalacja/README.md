# Instrukcje instalacyjne
Prostym sposobem korzystania z dołączonych do książki notatników Jupyter jest uruchamianie ich w [Colab](https://colab.research.google.com/notebooks/welcome.ipynb). Jest to środowisko Google Cloud, w którym można natychmiast i bezpłatnie uruchamiać notatniki, również na wysokowydajnych procesorach GPU i TPU. W tym celu należy w menu kliknąć polecenie `Środowisko wykonawcze`, następnie `Zmień typ środowiska wykonawczego` i z listy `Akcelerator sprzętowy` wybrać pozycję `GPU` lub `TPU`.
głównym mankamentem środowiska Colab jest brak możliwości kontrolowania i zamrażania wersji domyślnych bibliotek. Z tego powodu kod może (z dużym prawdopodobieństwem) nie działać w przyszłości.
**Aby mieć 100% pewności, że załączone notatniki będą działać zgodnie z oczekiwaniami, wykonaj poniższe instrukcje instalacyjne, odpowiednie dla Twojego systemu operacyjnego.**

## macOS
Szczegółowe instrukcje, jak krok po kroku uruchamiać notatniki w systemie macOS znajdziesz [tutaj](https://github.com/the-deep-learners/deep-learning-illustrated/blob/master/installation/step_by_step_MacOSX_install.md).

## Unix

#### Jeżeli masz już zależności
Zależności znajdują się w załączonym pliku [Dockerfile](https://github.com/the-deep-learners/deep-learning-illustrated/blob/master/Dockerfile). Jeżeli już je skonfigurowałeś, po prostu wpisz `git clone https://github.com/the-deep-learners/deep-learning-illustrated`.

#### Jeżeli nie masz zależności

1. Pobierz środowisko Docker CE np. dla systemu [Ubuntu](https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/)
2. Wykonaj wszystkie [instrukcje dla macOS](https://github.com/the-deep-learners/deep-learning-illustrated/blob/master/installation/step_by_step_MacOSX_install.md). Polegają one na uruchamianiu kodu za pomocą wiersza poleceń. Wykonaj wszystkie instrukcje oprócz pierwszej, czwartej i piątej.

## Windows

Społeczność użytkowników opracowała różne instrukcje instalacyjne, w zależności od warunków:

1. Jeżeli używasz 64-bitowej wersji systemu Windows 10 Professional lub Enterprise, zainstaluj pełny [kontener Docker](https://github.com/the-deep-learners/deep-learning-illustrated/blob/master/installation/step_by_step_Windows_Docker_install.md) zaweirający wszystkie potrzebne zależności.
2. W przeciwnym wypadku wykonaj proste instrukcje znajdujące się [tutaj](https://github.com/the-deep-learners/deep-learning-illustrated/blob/master/installation/simple_Windows_Anaconda_install.md). 