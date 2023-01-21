import connexion
import six

from swagger_server.models.measure import Measure  # noqa: E501
from swagger_server.models.message import Message  # noqa: E501
from swagger_server import util


def get_last_measure_by_sensor(sensor):  # noqa: E501
    """Get last measure from sensor

    Jet last measure by sensor. # noqa: E501

    :param sensor: name of sensor
    :type sensor: str

    :rtype: Measure
    """
    res = Measure(sensor, "grados centrifigados", "temperatura", "10.2")
    return res


def get_last_measure_by_sensor_and_type(sensor, start, end):  # noqa: E501
    """Get last measure from sensor

    Get historical measures by sensor and type # noqa: E501

    :param sensor: name of sensor
    :type sensor: str
    :param start: start
    :type start: str
    :param end: end
    :type end: str

    :rtype: List[Measure]
    """
    res = Measure(sensor, start, end, "grados centrifigados", "temperatura", "10.2")
    return res
