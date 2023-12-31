# Мария Перепелица,8-я когорта - Финальный проект.Инженер по тестированию плюс
import configuration
import requests


def get_order_info(track_number):
    return requests.get(configuration.URL_SERVICE + configuration.GET_ORDER_INFO,
                        params={"t": track_number})


def test_get_order_info_status_code():
    track_number = "809580"
    response = get_order_info(track_number)
    assert response.status_code == 200
