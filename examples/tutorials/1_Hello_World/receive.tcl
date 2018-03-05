# -*- tab-width: 4; indent-tabs-mode: nil; -*-
package require rmq

#Notice we have the extra_context as an extra
#parameter to the callback.
proc create_channel {extra_context conn} {
    puts "Extra context: $extra_context"
    set rChan [::rmq::Channel new $conn]

    $rChan queueDeclare "hello"

    set consumeFlags [list $::rmq::CONSUME_NO_ACK]

    #Use a lambda to handle the message
    $rChan basicConsume {apply {{rChan methodD frameD msg} {
	puts " \[x\] Received $msg"
    }}} "hello" $consumeFlags

    puts " \[*\] Waiting for messages. To exit press CTRL+C"
}

set conn [::rmq::Connection new -debug 1]

#Set a callback with added context.
$conn onConnected [list create_channel {tclrmq is awesome}]
$conn connect

vwait ::die

# vim: ts=4:sw=4:sts=4:noet
