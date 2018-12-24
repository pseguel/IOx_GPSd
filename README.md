# GPSd on IOx

This is an example that runs GPSd (http://catb.org/gpsd) in a Cisco IOx environment.

This has been tested in a IR829 with IOS 15.8(3)M1.
It should work in other IOx supported platforms.


## The scenario

Given the GPS capabilities of the IR8x9 platform, there's already a provided GPS microservice that exposes a REST API and a websocker interface (https://developer.cisco.com/docs/iox/#!gps-service-architecture). However, many apps use and rely on GPSd proyect.

