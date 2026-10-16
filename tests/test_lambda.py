from app.lambda_handler import handler
def test_ok():
    assert handler({}, None)["statusCode"] == 200
