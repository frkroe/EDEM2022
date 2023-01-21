# coding: utf-8

from __future__ import absolute_import

from flask import json
from six import BytesIO

from swagger_server.models.measure import Measure  # noqa: E501
from swagger_server.models.message import Message  # noqa: E501
from swagger_server.test import BaseTestCase


class TestTemperatureController(BaseTestCase):
    """TemperatureController integration test stubs"""

    def test_get_last_measure_by_sensor(self):
        """Test case for get_last_measure_by_sensor

        Get last measure from sensor
        """
        response = self.client.open(
            '/v2/getLastMeassureBySensor/{sensor}'.format(sensor='sensor_example'),
            method='GET',
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))


if __name__ == '__main__':
    import unittest
    unittest.main()
