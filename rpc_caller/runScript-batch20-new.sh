(
curl -X POST localhost:4725/v2/vrp -H "Content-Type: application/json" -d @- << EOF

{
  "timestamp": 1505317731,
  "discoEndpoint": "vrp",
  "productType": "rush",
  "vehicleViewId": 10001106,
  "cityId": -1,
  "supplies": [
    {
      "uuid": "4c80976b-e4ea-4727-a070-7d40a233a148",
      "location": {
        "latitude": 37.7878399538,
        "longitude": -122.434513257,
        "capacityV2": {
          "physicalCapacity": {
            "seats": 4
          },
          "policyCapacity": {
            "nEatsJobs": 3,
            "nPTJobs": 3,
            "nRushJobs": 3
          }
        },
        "capacity": {
          "seats": 4
        }
      },
      "jobs": [],
      "plan": [],
      "frontWaypoints": [],
      "lastWaypoints": [],
      "completedJobsCount": 0,
      "finishedWaypoints": [],
      "dispatchType": "regular",
      "newJobUuidsWithThisAsTopSupply": [
        "97012ed6-e4ea-4727-a070-7d40a233a148"
      ],
      "traits": []
    }
  ],
  "jobs": [
    {
      "uuid": "97012ed6-e4ea-4727-a070-7d40a233a148",
      "marketplace": "rush",
      "elapsedTimeInSeconds": 0,
      "waypoints": [
        {
          "uuid": "00000000-0000-0000-0000-000000000001",
          "latitude": 37.790733,
          "longitude": -122.434275,
          "capacity": {
            "seats": -1
          },
          "type": "Pickup",
          "interleavingEvents": {
            "pickupCount": 0,
            "dropoffCount": 0
          },
          "state": "PENDING",
          "subState": "UNKNOWN_WAYPOINT_SUB_STATE",
          "startTime": 1505317788,
          "finishTime": 1505318388,
          "serviceTime": 300,
          "walkingTime": 0,
          "parkingTime": 0,
          "backToParkingTime": 0
        },
        {
          "uuid": "00000000-0000-0000-0000-000000000002",
          "latitude": 37.798911,
          "longitude": -122.4002471,
          "capacity": {
            "seats": 1
          },
          "type": "Dropoff",
          "interleavingEvents": {
            "pickupCount": 0,
            "dropoffCount": 0
          },
          "state": "PENDING",
          "subState": "UNKNOWN_WAYPOINT_SUB_STATE",
          "startTime": 1505317788,
          "finishTime": 1505321388,
          "serviceTime": 300,
          "walkingTime": 0,
          "parkingTime": 0,
          "backToParkingTime": 0
        }
      ],
      "vehicleViewId": 10001106,
      "upfrontFare": null,
      "isPoolJob": true,
      "eyeballEtaSec": null,
      "clientUUID": "392534d8-ea63-4f27-9a41-69d1191e0cd9",
      "maxAllowedBatchSize": 3,
      "etdCapSec": 3300,
      "eligibleGeobaseSupplies": [
        "4c80976b-e4ea-4727-a070-7d40a233a148"
      ]
    }
  ],
  "algoType": "TCVRP",
  "maxPoolPlans": 25,
  "useBaseFareForPickupLeg": false,
  "dispatchModelParameters": {},
  "isReorderRequest": false,
  "isHotspotRequest": false,
  "isAccessPointRequest": false,
  "runRushSoloMGVInVRP": true,
  "doBestEffort": true,
  "doRecordFilteredReasons": true,
  "purpose": "dispatchability",
  "useVRPV2ForRush": false,
  "constraintCoefficients": {
    "disallowedDispatchTypes": [
      "Pool",
      "ForwardDispatch"
    ],
    "maxWaitingTimeAfterFirstNewWaypoint": 2147483647,
    "allowableIncreaseMultiplierForBatchedJob": 100,
    "maxDropoffDeltaFactor": 1000,
    "minDropoffAllowableIncreaseSec": 10000000,
    "minDutsOnTripTravelTimeSeconds": -10000000,
    "orderEtdFilterEnabled": false,
    "orderEtdFilterShadowEnabled": false,
    "backtrackingFilterShadowing": true,
    "traitsToMaxDistanceMeterMap": {},
    "maxStartTimeDifferenceBetweenBatchPickups": 600,
    "supplyJobMaxEtaMap": {},
    "staticKeySupplyJobMaxEtaList": [],
    "forwardDispatchToPickupMaxEta": 3600,
    "eatsMgvEnabled": false,
    "soloEatsMgvEnabled": false,
    "maxPickUpTimeForNewVrpPlansSec": 1000000,
    "maxPickupWaitSec": 600,
    "maxJobTripTimeIncreaseRatio": 0.7,
    "jobCompletionPaddingMin": 0,
    "maxJobTripTimeIncreaseSec": 600,
    "lowerBoundOriginalTripTimeSec": 600,
    "maxPickupEtaSec": 3600,
    "crossVehicleViewMatchingEnabled": false,
    "crossVehicleViewMatchableWhitelist": [],
    "maxMasterToMinionFareThreshold": 0,
    "vehicleTraitsDesiredByClients": {},
    "orgIdToBlacklistedTraits": {},
    "clientIdToBlacklistedTraits": {}
  },
  "rushBoosting": {
    "shouldBoostVehicleTraits": false,
    "shouldBoostZoneBasedVehicleTraits": false,
    "traitsToMaxDistanceMeterMap": {},
    "boostVehicleTraitsMaxEtaSec": 600
  },
  "solverType": "LPRounding",
  "eatsMGVParametersMap": {},
  "runPreConstraints": true,
  "requestUUID": "3ea196e1-9e3a-43eb-aee5-8cfce7646995"
}

EOF
) | jq .

