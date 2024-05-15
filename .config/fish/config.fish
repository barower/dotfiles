if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting

function y
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	yazi $argv --cwd-file="$tmp"
	if set cwd (cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
		cd -- "$cwd"
	end
	rm -f -- "$tmp"
end

function r
	set tempfile (mktemp -t tmp.XXXXXX)
	command ranger --choosedir=$tempfile $argv
	set return_value $status

	if test -s $tempfile
		set ranger_pwd (cat $tempfile)
		if test -n $ranger_pwd -a -d $ranger_pwd
			builtin cd -- $ranger_pwd
		end
	end

	command rm -f -- $tempfile
	return $return_value
end

zoxide init fish | source
