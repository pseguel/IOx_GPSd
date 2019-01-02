# GPSd on IOx

This is an example of a microservice running GPSd (http://catb.org/gpsd) on a Cisco IOx environment.
It allows GPSd clients to interact directly with the IR829 GPS.

This has been tested in a IR829 with IOS 15.8(3)M1.
It should work on other IOx supported platforms with an integrated GPS (IR807/IR809).


## The scenario

Given the GPS capabilities of the IR800 platform, there's already a provided GPS microservice that exposes a REST API and a websocket interface (https://developer.cisco.com/docs/iox/#!gps-service-architecture). However, many apps use and rely on the GPSd proyect.

This microservice allows clients that consume data from a GPSd source to use the router GPS data.


## Installing/Running the service

### Requirements:
- Docker
- IOx SDK or ioxclient, available on https://software.cisco.com
- a IOx capable hardware with GPS support (IR800 platform).

### Steps
- Clone this project (detailed steps soon)
- Create the docker container (detailed steps soon)
- Create the IOx package: package.tar (detailed steps soon)

Once you have the package, just install/activate/start the package via IOxclient or Local Manager (not tested yet on Cisco Kinetic GMM, but it should work).
Once running, the GPSd service will be listening on TCP port 2947. 

Keep in mind that a nat portmapping might be neeed on router side.

```
ip nat inside source static tcp [GOS_IP_address] 2947 interface [WAN_Interface] 2947

```
