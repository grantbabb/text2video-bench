FROM python:3

RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/guoyww/AnimateDiff.git /app/AnimateDiff


WORKDIR /app/AnimateDiff

RUN pip install --no-cache-dir -r requirements.txt

COPY *.py /app/AnimateDiff
COPY entrypoint.sh /app/AnimateDiff

RUN chmod +x /app/entrypoint.sh

ENTRYPOINT ["/app/entrypoint.sh"]

