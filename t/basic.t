
use Test::More tests  => 3;
use Test::Builder::Tester;
BEGIN { use_ok( 'Test::XML::Valid' ); }


# Basic test for success
    test_out('ok 1 - ./t/simple_valid.xhtml is valid XHTML');
    xml_file_ok('./t/simple_valid.xhtml');
    test_test('Basic Test::XML::Valid test for success');

# Test setting a custom message
    test_out('ok 1 - Simple File is Valid');
    xml_file_ok('./t/simple_valid.xhtml', 'Simple File is Valid');
    test_test('Setting a custom error message');

# Basic test for failure
# What's a good way to test the failure output, since it's going
# to include a Perl library path, which will vary by installation? -mls
#     test_out('not ok 1 - ./t/basic.t is valid XHTML');
#     xml_file_ok('./t/basic.t');
#     test_test('Basic failure teset');




