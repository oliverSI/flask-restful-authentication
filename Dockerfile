FROM python
COPY app ./app
WORKDIR ./app
RUN pip install flask && \
    pip install pymongo && \
    pip install flask-restful && \
    pip install Flask-Mail && \
    pip install pyjwt

EXPOSE 80
ENTRYPOINT ["python3","api.py"]