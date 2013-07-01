set -A noglob_commands curl find grep ack ag sed
for command in $noglob_commands; do
  alias $command="noglob $command"
done
