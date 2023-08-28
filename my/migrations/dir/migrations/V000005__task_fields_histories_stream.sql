CREATE STREAM TASK_FIELDS_HISTORIES_STREAM (
    payload STRUCT <
        before STRUCT <
            id BIGINT,
            record_id STRING,
            model_type STRING,
            changes_set STRING,
            before_changes STRING,
            after_changes STRING,
            action STRING,
            remark STRING,
            created_at STRING,
            created_by INT,
            updated_by_file STRING
        >,
        after STRUCT <
            id BIGINT,
            record_id STRING,
            model_type STRING,
            changes_set STRING,
            before_changes STRING,
            after_changes STRING,
            action STRING,
            remark STRING,
            created_at STRING,
            created_by INT,
            updated_by_file STRING
        >,
        source STRUCT <
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
    kafka_topic = 'gridsz_task_dev.task.fields_histories',
    value_format = 'JSON'
);