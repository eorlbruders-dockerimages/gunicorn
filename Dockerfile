FROM registry.eorlbruder.de/cron
MAINTAINER  David Magnus Henriques <eorlbruder@magnus-henriques.de>

RUN pacman -Syyu --noconfirm --quiet --needed --force git make python-pip libmariadbclient gcc && \
    pacman -Sc --noconfirm

ADD assets/gunicorn.conf /etc/supervisor/conf.d/gunicorn.conf

CMD ["supervisord", "-n"]
