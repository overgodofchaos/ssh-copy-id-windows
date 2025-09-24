# ssh-copy-id-windows

---

# Usage

---

```text
Usage: ssh-copy-id [OPTIONS] HOST

Arguments:
  HOST  Host name in format name@host or hostname from ssh config.
        \[required]

Options:
  -i, --id-file TEXT  Name or path of id key file. By default copy all keys
                      from ~/.ssh directory.
  -p, --port INTEGER  Host port
  --help              Show this message and exit.
```

# Examples

---

```shell
ssh-copy-id root@123.234.23.134
````

```shell
ssh-copy-id -i id_rsa.pub -p 1022 root@123.234.23.134
```