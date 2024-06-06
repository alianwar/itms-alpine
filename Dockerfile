FROM scratch

COPY itms /itms

CMD ["/itms/bin/iTMSTransporter"]
