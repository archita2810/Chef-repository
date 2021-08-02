name "devops"
description "web server role"
run_list "recipe[apache-cookbook]","recipe[test-cookbook]"

