FROM python:3

RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/grantbabb/AnimateDiff.git


WORKDIR /app/AnimateDiff
RUN ls /app/AnimateDiff
RUN pip install --no-cache-dir -r requirements.txt

COPY *.py /app/AnimateDiff
COPY entrypoint.sh /app/AnimateDiff

RUN chmod +x /app/entrypoint.sh

ENTRYPOINT ["/app/entrypoint.sh"]

