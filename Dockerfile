FROM teddysun/xray:latest
COPY config.json /etc/xray/config.tpl
CMD sh -c "sed -e s/__PORT__/${PORT:-10000}/ -e s/__UUID__/${UUID}/ -e s#__WSPATH__#${WSPATH:-/ws}# /etc/xray/config.tpl > /etc/xray/config.json && xray -config /etc/xray/config.json"
