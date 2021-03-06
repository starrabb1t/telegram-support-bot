#!/usr/bin/env python3

from telegram.ext import Updater

from handlers import setup_dispatcher
from settings import TELEGRAM_TOKEN

updater = Updater(TELEGRAM_TOKEN)

dp = updater.dispatcher
dp = setup_dispatcher(dp)

updater.start_polling()
updater.idle()