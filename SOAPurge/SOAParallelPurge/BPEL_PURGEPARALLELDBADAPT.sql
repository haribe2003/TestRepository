-- Declare package containing conversion functions between SQL and PL/SQL types
CREATE OR REPLACE PACKAGE BPEL_PURGEPARALLELDBADAPT AS
   PROCEDURE soa$delete_instances (MIN_CREATION_DATE TIMESTAMP,
	MAX_CREATION_DATE TIMESTAMP,
	BATCH_SIZE INTEGER,
	MAX_RUNTIME INTEGER,
	RETENTION_PERIOD TIMESTAMP,
	PURGE_PARTITIONED_COMPONENT INTEGER,
	COMPOSITE_NAME VARCHAR2,
	COMPOSITE_REVISION VARCHAR2,
	SOA_PARTITION_NAME VARCHAR2,
	IGNORE_STATE INTEGER
	);
END BPEL_PURGEPARALLELDBADAPT;
/
show errors
CREATE OR REPLACE PACKAGE BODY BPEL_PURGEPARALLELDBADAPT IS

   PROCEDURE soa$delete_instances (MIN_CREATION_DATE TIMESTAMP,
	MAX_CREATION_DATE TIMESTAMP,
	BATCH_SIZE INTEGER,
	MAX_RUNTIME INTEGER,
	RETENTION_PERIOD TIMESTAMP,
	PURGE_PARTITIONED_COMPONENT INTEGER,
	COMPOSITE_NAME VARCHAR2,
	COMPOSITE_REVISION VARCHAR2,
	SOA_PARTITION_NAME VARCHAR2,
	IGNORE_STATE INTEGER
	) IS
 PURGE_PARTITIONED_COMPONENT_ BOOLEAN;
 IGNORE_STATE_ BOOLEAN;
   BEGIN
 PURGE_PARTITIONED_COMPONENT_ := SYS.SQLJUTL.INT2BOOL(PURGE_PARTITIONED_COMPONENT);
 IGNORE_STATE_ := SYS.SQLJUTL.INT2BOOL(IGNORE_STATE);
      DEV_SOAINFRA.SOA.DELETE_INSTANCES(MIN_CREATION_DATE,
	MAX_CREATION_DATE,
	BATCH_SIZE,
	MAX_RUNTIME,
	RETENTION_PERIOD,
	PURGE_PARTITIONED_COMPONENT_,
	COMPOSITE_NAME,
	COMPOSITE_REVISION,
	SOA_PARTITION_NAME,
	IGNORE_STATE_
	);
   END soa$delete_instances;

END BPEL_PURGEPARALLELDBADAPT;
/
show errors
exit
