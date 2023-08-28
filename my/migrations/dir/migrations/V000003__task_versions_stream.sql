CREATE STREAM TASK_VERSIONS_STREAM (
    payload STRUCT<
        before STRUCT<
            id BIGINT,
            revision INT,
            task_id BIGINT,
            task_type STRING,
            old_main_status STRING,
            old_main_status_reason STRING,
            new_main_status STRING,
            new_main_status_reason STRING,
            new_sub_status STRING,
            task_body STRING,
            created_at STRING,
            created_by INT,
            updated_at STRING,
            updated_by INT,
            attachments STRING,
            comments STRING
        >,
        after STRUCT<
            id BIGINT,
            revision INT,
            task_id BIGINT,
            task_type STRING,
            old_main_status STRING,
            old_main_status_reason STRING,
            new_main_status STRING,
            new_main_status_reason STRING,
            new_sub_status STRING,
            task_body STRING,
            created_at STRING,
            created_by INT,
            updated_at STRING,
            updated_by INT,
            attachments STRING,
            comments STRING
        >,
        source STRUCT<
            version STRING,
            "connector" STRING,
            name STRING,
            ts_ms BIGINT,
            snapshot STRING,
            db STRING,
            sequence STRING,
            schema STRING,
            "table" STRING,
            txId BIGINT,
            lsn BIGINT,
            xmin BIGINT
        >,
        op STRING,
        ts_ms BIGINT
    >
) WITH (
    KAFKA_TOPIC='gridsz_task_dev.task.versions',
    VALUE_FORMAT='JSON'
);