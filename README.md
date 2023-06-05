# unifi_reconnect

Reconnect arbitrary devices on a UniFi Network by their MAC. Useful for stubborn devices that are sort of connected but not actualy networking properly.

```
unifi_reconnect --help                                           

USAGE: unifi_reconnect [flags]
flags:

unifi_reconnect:
  --mac: Client MAC address to reconnect
  --password: Local password
  --site: Site id
    (default: 'default')
  --url: Base url including http(s) to CloudKey endpoint. Do not include /network/
  --username: Local username
```

ENV variables of the same work, format being `UNIFI_RECONNECT_{CAPITALIZED_FLAG_NAME}`, for example `UNIFI_RECONNECT_URL`. Also see `--flagfile` for providing flags via a file.
