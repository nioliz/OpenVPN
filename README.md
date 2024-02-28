# OpenVPN
I had a troubles with connection latest OpenVPN versions with Mikrotik OpenVPN server realization.
So, this image was created to solve this problem.

## Usage 1:

docker run --rm --network=host -d --privileged -v <path_to_config_file>:/etc/openvpn/<config_file> nioliz/openvpn <config_file>

### Example:

```
docker run --rm --network=host -d --privileged -v /home/user/openvpn/userconf.ovpn:/etc/openvpn/userconf.ovpn nioliz/openvpn userconf.ovpn
```

## Usage 2 
Additional credentials are stored in separated file

### Example:

#### Getting listing of OpenVPN files:
```
> ls /home/user/openvpn
userconf.ovpn
userpass.txt
```

#### Starting container:
```
> docker run --rm --network=host -d --privileged -v /home/user/openvpn:/etc/openvpn nioliz/openvpn userconf.ovpn --auth-user-pass userpass.txt
```
