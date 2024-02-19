import win32api, win32con

class CustomLibrary:
    def __init__(self):
        self._name = "CustomLibrary"
        self._version = "1.0"
        self._author = "David Garcia"
        self._description = "Custom Library for Robot Framework"
        self._keywords = ["CustomLibrary", "Robot Framework", "Library"]

    def move_mouse_to(self, posx, posy, click=False):
        x = int(posx)
        y = int(posy)
        win32api.SetCursorPos((x, y))
        if click:
            win32api.mouse_event(win32con.MOUSEEVENTF_LEFTDOWN, x, y, 0, 0)
            win32api.mouse_event(win32con.MOUSEEVENTF_LEFTUP, x, y, 0, 0)

