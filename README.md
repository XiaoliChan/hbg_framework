# HBG Framework

## Notes
* run `startbg.sh <vpn_ip>` to create www directory
* run `hbg.sh <def_ip> <root_pass>` to log into defenders
* run `secure.sh <def_ip> <root_pass>` to log into and secure defenders
* run `getflags.sh` get flags for all exploited machines

### Useful Commands

| **Command** | **Description** |
|---|----|
| `ps -aef --forest` | Print processes in a nice tree. |
| `cd /proc/<proc_id>` | Go into the proc directory of a process. |
| `ls -al \| grep cwd` | See where the shell actually is from the proc directory |
| `cd /proc/<proc_id>/fd` | See file descriptors |
| `echo "some message" > cd /proc/<proc_id>/fd/0` | Send "some message" to standard input |
| `ss -anp \| grep <proc_id>` | List all sockets, numeric, by process; grep for the interesting process |

> Look up anything weird in [explainshell](https://explainshell.com/)
