from datetime import datetime, timedelta


def add_gigasecond(t: datetime) -> datetime:
    return t + timedelta(seconds=10**9)
