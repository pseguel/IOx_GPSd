FROM alpine:3.8
RUN apk add --update gpsd
EXPOSE 2947 
CMD ["gpsd", "-b -G -n /dev/ttyS4"]
