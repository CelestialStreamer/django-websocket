FROM python:3.9.0a6

# Force stin, stdout, and stderr to be totally unbuffered
ENV PYTHONUNBUFFERED 1

# system locale
ENV LANG     = en_US.UTF-8 \
    LANGUAGE = en_US:en \
    LC_ALL   = en_US.UTF-8

# project location
WORKDIR /usr/local/src/project


# COPY requirements.txt and RUN pip install BEFORE adding the rest the code,
# this will cause Docker's caching mechanism to prevent re-installing (all)
# dependencies when there is only a change in the code.
COPY requirements.txt .
RUN pip install -r requirements.txt