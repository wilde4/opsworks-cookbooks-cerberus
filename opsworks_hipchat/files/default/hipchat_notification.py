#!/usr/bin/env python
import hipchat
import sys

token=sys.argv[1]
room=sys.argv[2]
application=sys.argv[3]
stack=sys.argv[4]
user=sys.argv[5]
message="Application %s deployed by %s on %s" % (application, user, stack)
hipster = hipchat.HipChat(token=token)
hipster.message_room(room, 'Amazon Opsworks', message, color='purple')
