from django.apps import AppConfig


class V1Config(AppConfig):
    name = 'v1'
    verbose_name = "Versão 1"

    def ready(self):
        from v1 import signals  # noqa
