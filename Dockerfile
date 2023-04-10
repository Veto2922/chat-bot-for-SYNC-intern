FROM python

WORKDIR /python-docker

RUN python -c "import nltk; nltk.download('punkt'); nltk.download('wordnet')"
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]