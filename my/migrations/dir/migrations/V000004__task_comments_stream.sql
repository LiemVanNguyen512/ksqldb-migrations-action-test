CREATE STREAM TASK_COMMENTS_STREAM (
    payload STRUCT <
        before STRUCT <
            note STRING,
            created_at STRING,
            user_id INT,
            party_id INT,
            task_id BIGINT,
            privacy_level INT,
            author STRING,
            id STRING
        >,
        after STRUCT <
            note STRING,
            created_at STRING,
            user_id INT,
            party_id INT,
            task_id BIGINT,
            privacy_level INT,
            author STRING,
            id STRING
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
    kafka_topic = 'gridsz_task_dev.task.task_comments',
    value_format = 'JSON'
);