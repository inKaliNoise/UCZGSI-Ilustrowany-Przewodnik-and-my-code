# Szczegółowe informacje o obrazie bazowym: http://jupyter-docker-stacks.readthedocs.io/en/latest/using/selecting.html#jupyter-scipy-notebook.
# Ubuntu 18.04 (bionic) from 2018-04-26
# Poniżej zostały wskazane konkretne wersje. Możesz je modyfikować na własne ryzyko, aby korzystać z nowszych wersji bibiotek.
# Obraz bazowy zawiera język Python 3.6.5 jako część środowiska Miniconda 4.5.1.

FROM jupyter/scipy-notebook:e7000ca1416d

MAINTAINER Jon Krohn <jon@untapt.com>

USER $NB_USER

# Instalacja bibliotek.
RUN \
	# Aktualizacja pip.
	pip install --upgrade pip==19.0.3 && \
	# Instalacja biblioteki TensorFlow.
	pip install --upgrade https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-1.8.0-cp36-cp36m-linux_x86_64.whl && \
	# Instalacja bibliotek TFlearn, Keras, PyTorch, Torchvision, NLP i środowiska RL.
	pip install tflearn==0.3.2 \
				keras==2.2.0 \
				nltk==3.3 \
				gensim==3.4.0 \
				gym==0.9.6 \
				https://download.pytorch.org/whl/cpu/torch-1.0.1.post2-cp36-cp36m-linux_x86_64.whl \
				torchvision==0.2.2.post3 \
				h5py==2.8.0
