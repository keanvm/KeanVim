#!/usr/bin/env python
# -*- encoding: utf-8 -*-

import yaml
import codecs


def get_config(file_name, name):
    config = yaml.load(codecs.open(file_name, "r", "utf-8").read())
    values = config.get(name, None)
    if values is None:
        print('wrong name: {}'.format(name))
        return ""
    host = values.get("host", None)
    if host is None:
        print('host not exists')
        return ""
    port = values.get("port", None)
    port = "" if port is None else "-p {} ".format(port)
    user = values.get("user", "root")
    user_host = " {}@{} ".format(user, host)
    identity = values.get("identity", None)
    identity = "" if identity is None else "-i {}".format(identity)
    args = values.get("args", "")
    if args is None:
        args = ""
    return " {} {} {} {}".format(args, identity, port, user_host)


def main():
    import sys
    argv = sys.argv
    from os.path import expanduser
    file_name = "{}/.sshrc".format(expanduser("~"))
    len_argv = len(argv)
    if len_argv < 2 or len_argv > 3:
        print("usage:\n\t_ssh.py [name] <config_file>\n")
        return False
    if len_argv >= 2:
        host_name = argv[1]
    if len_argv == 3:
        file_name = argv[2]
    print(get_config(file_name, host_name))
    return True


if __name__ == "__main__":
    main()
