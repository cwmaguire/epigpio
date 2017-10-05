PROJECT = epigpio
PROJECT_DESCRIPTION = server to talk to PIGPIO
PROJECT_VERSION = 0.1.0

DEPS = lager
dep_lager = git git@github.com:basho/lager.git master

ERLC_OPTS = +'{parse_transform, lager_transform}'

include erlang.mk
