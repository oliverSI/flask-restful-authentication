FROM python
RUN pip install flask && \
    pip install pymongo && \
    pip install flask-restful && \
    pip install Flask-Mail && \
    pip install pyjwt && \
    pip install uwsgi

ENTRYPOINT ["uwsgi", "--ini", "/root/app/uwsgi.ini"]