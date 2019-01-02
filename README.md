# GPSd on IOx

This is an example that runs GPSd (http://catb.org/gpsd) in a Cisco IOx environment.

This has been tested in a IR829 with IOS 15.8(3)M1.
It should work in other IOx supported platforms.


## The scenario

Given the GPS capabilities of the IR8x9 platform, there's already a provided GPS microservice that exposes a REST API and a websocker interface (https://developer.cisco.com/docs/iox/#!gps-service-architecture). However, many apps use and rely on GPSd proyect.


## Installing/Running the service

Just install the package via IOxclient or Local Manager (not tested yet on Cisco Kinetic GMM, but it should work).
Once running, it will listen on TCP port 2947. 

Keep in mind that a nat portmapping might be neeed on router side.

```
ip nat inside source static tcp [GOS_IP_address] 2947 interface [WAN_Interface] 2947

```

