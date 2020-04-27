from app.utils import number_utils


def test_add():
    actual = number_utils.add(1, 3)

    assert actual == 4
