# Code generated by protoc-gen-liquibase. DO NOT EDIT.
FROM liquibase/liquibase:4.21.0
COPY rollback.sh /entry.sh
ENTRYPOINT ["/entry.sh"]
