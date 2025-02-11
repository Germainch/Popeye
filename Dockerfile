FROM hashicorp/http-echo
LABEL authors="germain"
EXPOSE 5678
ENTRYPOINT ["top", "-b"]