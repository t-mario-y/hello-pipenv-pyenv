import datetime


def getDateString() -> str:
    return "{0:%Y-%m-%d %H:%M:%S}".format(datetime.datetime.now())
