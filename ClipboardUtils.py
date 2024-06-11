#!/usr/bin/env python3
from robot.api.deco import keyword
from robot.libraries.BuiltIn import BuiltIn
# from appium import webdriver

class ClipboardUtils:
    appium_lib = BuiltIn().get_library_instance('AppiumLibrary')
    # appium_lib = AppiumLibrary()

    def get_driver(self):
        driver = self.appium_lib._current_application()
        return driver

    @keyword
    def get_clipboard(self):
        return self.get_driver().get_clipboard_text()
