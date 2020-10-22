run_test_1:
	newman run .\tests\atdd\api\get_todos_success.json -e .\tests\atdd\api\environment\jsonplaceholder_env1.json -d .\tests\atdd\api\testdata\get_todos_success.json

run_test_2:
	newman run tests\atdd\api\post_fail.json -e tests\atdd\api\environment\binorg_env.json

run_test_3:
	newman run tests\atdd\api\verify_basic_authen_success.json -e tests\atdd\api\environment\binorg_env.json -d tests\atdd\api\testdata\verify_basic_authen_success.json

run_all_test:
	newman run .\tests\atdd\api\get_todos_success.json -e .\tests\atdd\api\environment\jsonplaceholder_env1.json -d .\tests\atdd\api\testdata\get_todos_success.json
	newman run tests\atdd\api\post_fail.json -e tests\atdd\api\environment\binorg_env.json
	newman run tests\atdd\api\verify_basic_authen_success.json -e tests\atdd\api\environment\binorg_env.json -d tests\atdd\api\testdata\verify_basic_authen_success.json
	