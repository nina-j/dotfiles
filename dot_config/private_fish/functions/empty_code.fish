function code
	nohup cursor $argv --no-sandbox > /dev/null 2>&1 &; disown
end
