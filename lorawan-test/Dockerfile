# TODO: pick something more specific later (this is too big: 893MB)
FROM python:3-buster

# put all of our apps code in /app
WORKDIR /app

# install all python dependencies
COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

# copy rest of our code
COPY . .

# define how to run our code
ENTRYPOINT ["python3", "main.py", "--debug"]
