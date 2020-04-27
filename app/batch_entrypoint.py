from first_batch import first
from second_batch import second
from app.utils import dateUtils

print(dateUtils.getDateString() + ":app_entry.py is called directly.")

first.batch_process()
second.batch_process()
