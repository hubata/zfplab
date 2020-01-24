FROM centos:centos8.1.1911

LABEL net.hubata.maintainer="Yovko Yovkov (yyovkov@yyovkov.net)"
LABEL net.hubata.vendor="zfplabs"
LABEL net.hubata.software="zfplabserver"
LABEL net.hubata.software_version="0"
LABEL net.hubata.container_version="0"

ENV ZFPDIR /opt/zfplab
ENV USERID 500
WORKDIR $ZFPDIR

RUN useradd -u $USERID -d $ZFPDIR -M zfplab
USER zfplab

COPY --chown=zfplab:zfplab zfplabserver/ZFPLABServerLinux/ $ZFPDIR/

RUN chmod u+x $ZFPDIR/zfplabserver

CMD ["./zfplabserver"]
