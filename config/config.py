from os import environ


class DefaultConfiguration:
    CONFIG_FILEPATH = environ.get('CONFIG_FILEPATH', 'src/sereia/config/')
    CREATE_INDEX = environ.get('CREATE_SEREIA_INDEX', True)
    DATABASE = environ.get('DATABASE', 'nba')
    DATABASE_USER = environ.get('DATABASE_USER', 'root')
    DATABASE_PASSWORD = environ.get('DATABASE_PASSWORD', 'root@server')
    DATABASE_PORT = environ.get('DATABASE_PORT', 27017)
    DATABASE_HOST = environ.get('DATABASE_HOST', 'localhost')
    DATABASE_CURSOR_BATCH_SIZE = environ.get('DATABASE_CURSOR_BATCH_SIZE', 20 * 1000)
    DATABASE_INDEX_CHECKPOINT_VALUE = environ.get('DATABASE_INDEX_VALUE_CHECKPOINT_VALUE', 100 * 1000)
    DATASETS_FOLDER = environ.get('DATASETS_FOLDER', './datasets_config/')
    INDEX_FOLDER = environ.get('INDEX_FOLDER', './tmp/datasets/{}/')
    QUERYSETS_FOLDER = environ.get('QUERYSETS_FOLDER', './querysets_config/')
    TEMP_FILES_PATH = environ.get('TEMP_FILES_PATH', 'tmp/')
    HOST_MAX_RAM_LIMIT = environ.get('HOST_MAX_RAM_LIMIT', 12)
    # RESULTS_DIRECTORY = environ.get('RESULTS_DIRECTORY', '../results/')
