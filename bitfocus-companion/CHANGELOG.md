## 0.2.8
Updated Companion docker image to v4.2.2

## 0.2.7
Bugfix: reworked add-on startup to prevent Node.js permission errors in Companion modules
- /data/companion is now used as the actual config base directory:
- Companion and its modules now operate on a real directory, not a symlink.
- This avoids Node.js permission checks failing on /companion.
- The add-on remains compatible with Home Assistant’s persistent /data storage model.

## 0.2.6
Updated Companion docker image to v4.2.1

## 0.2.5
Updated Companion docker image to v4.1.4

## 0.2.4
Updated Companion docker image to v4.1.3

## 0.2.3.1
Updated Companion docker image to v4.1.1
- bugfix

## 0.2.3
Updated Companion docker image to v4.1.1

## 0.2.2
Updated Companion docker image to v4.0.3

## 0.2.1
Updated Companion docker image to v4.0.2
7
