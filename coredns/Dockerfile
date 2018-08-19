FROM coredns/coredns:1.2.0

ADD Corefile /Corefile

ENTRYPOINT ["/coredns", "-conf=/Corefile"]