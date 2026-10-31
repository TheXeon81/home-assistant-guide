# Portare gli access point Omada in Home Assistant: client, traffico e avvisi
# Sezione / Section: Lo script omada_status.py
# Guida completa (in italiano) / Full guide (in Italian):
# https://www.lucianoblancato.it/home-assistant/wifi-omada-home-assistant.html

class Omada:
    def __init__(self, base, user, password):
        self.base, self.user, self.password = base, user, password
        ctx = ssl.create_default_context()
        ctx.check_hostname = False      # certificato autofirmato del controller
        ctx.verify_mode = ssl.CERT_NONE
        self.jar = http.cookiejar.LWPCookieJar(COOKIE_FILE)
        self.opener = urllib.request.build_opener(
            urllib.request.HTTPCookieProcessor(self.jar),
            urllib.request.HTTPSHandler(context=ctx),
        )

    def login(self):
        data = self._post(self.base + "/api/user/login?ajax",
                          {"method": "login", "params": {"name": self.user, "password": self.password}})
        token = (data.get("result") or {}).get("token")
        if not token:
            raise RuntimeError(f"login fallito: {data.get('msg')}")
        ...

    def call(self, method, params=None):
        url = f"{self.base}/web/v1/controller?userStore&token={self.token}"
        data = self._post(url, {"method": method, "params": params or {}})
        if data.get("errorCode") != 0:
            raise RuntimeError(f"{method}: errorCode {data.get('errorCode')} {data.get('msg')}")
        return data.get("result")

# letture usate: getGridAps, getGridActiveClients ({"type": "all"}), getGlobalStat
