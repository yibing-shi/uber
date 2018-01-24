(
curl -X POST localhost:14725/v2/vrp -H "Content-Type: application/json" -d @- << EOF

{
        "timestamp": 1505356222,
        "discoEndpoint": "vrp",
        "productType": "rush",
        "vehicleViewId": 20001753,
        "cityId": 186,
        "productUUID": "e296a6f2-ce33-50b1-8e51-bf172e28deee",
	"doLogNotDispatchedReasons": true,
	"doLogNotBatchedReasons": true,
        "supplies": [
          {
            "uuid": "79013359-5700-4a0c-92a5-788643b70bd3",
            "location": {
              "latitude": 35.128068,
              "longitude": -90.061473,
              "capacityV2": {
                "physicalCapacity": {
                  "seats": 4,
                  "trunk": 100
                },
                "policyCapacity": {
                  "nEatsJobs": 2,
                  "nPTJobs": 2,
                  "nPoolJobs": 2,
                  "nRushJobs": 2
                }
              },
              "capacity": {
                "seats": 4,
                "trunk": 100
              }
            },
            "jobs": [],
            "plan": [],
            "frontWaypoints": [],
            "lastWaypoints": [],
            "completedJobsCount": 0,
            "finishedWaypoints": [],
            "dispatchType": "regular",
            "traits": []
          },
          {
            "uuid": "36871903-9142-4b0f-8a54-ce8b416d11d9",
            "location": {
              "latitude": 35.128068,
              "longitude": -90.061473,
              "capacityV2": {
                "physicalCapacity": {
                  "seats": 4,
                  "trunk": 100
                },
                "policyCapacity": {
                  "nEatsJobs": 2,
                  "nPTJobs": 2,
                  "nPoolJobs": 2,
                  "nRushJobs": 2
                }
              },
              "capacity": {
                "seats": 4,
                "trunk": 100
              }
            },
            "jobs": [],
            "plan": [],
            "frontWaypoints": [],
            "lastWaypoints": [],
            "completedJobsCount": 0,
            "finishedWaypoints": [],
            "dispatchType": "regular",
            "traits": []
          }
        ],
        "jobs": [
          {
            "uuid": "ba18ed5a-ffd4-40fc-be5f-7f66da1a534a",
            "marketplace": "rush",
            "elapsedTimeInSeconds": 2468,
            "waypoints": [
              {
                "uuid": "ac0963b1-7658-493e-984f-e126e2881c42",
                "latitude": 35.128068,
                "longitude": -90.061473,
                "capacity": {
                  "seats": 0,
                  "trunk": -2
                },
                "type": "Pickup",
                "interleavingEvents": {
                  "pickupCount": 0,
                  "dropoffCount": 0
                },
                "state": "PENDING",
                "subState": "UNKNOWN_WAYPOINT_SUB_STATE",
                "capacityByTrait": {
                  "trunk": {}
                },
                "startTime": 1505356818,
                "finishTime": 1505357418,
                "serviceTime": 600,
                "parkingTime": 0,
                "backToParkingTime": 0
              },
              {
                "uuid": "92631538-ba8a-43aa-8e8a-f93cf101637c",
                "latitude": 35.1495343,
                "longitude": -90.0489801,
                "capacity": {
                  "seats": 0,
                  "trunk": 2
                },
                "type": "Dropoff",
                "interleavingEvents": {
                  "pickupCount": 0,
                  "dropoffCount": 0
                },
                "state": "PENDING",
                "subState": "UNKNOWN_WAYPOINT_SUB_STATE",
                "capacityByTrait": {
                  "trunk": {}
                },
                "startTime": 1505356818,
                "finishTime": 1505359818,
                "serviceTime": 600,
                "parkingTime": 0,
                "backToParkingTime": 0
              }
            ],
            "vehicleViewId": 20001753,
            "upfrontFare": null,
            "isPoolJob": true,
            "eyeballEtaSec": null,
            "orgUUID": "4d045bbd-6cc4-4a7e-8d04-ed50aa29fb7c",
            "clientUUID": "c9954e19-53e5-4b90-a60c-2f1555296d03",
            "maxAllowedBatchSize": 2,
            "etdCapSec": 2700,
            "eligibleGeobaseSupplies": [
              "79013359-5700-4a0c-92a5-788643b70bd3",
              "36871903-9142-4b0f-8a54-ce8b416d11d9"
            ]
          },
          {
            "uuid": "6739ba61-0aba-43b0-bfe7-784ae7895b2b",
            "marketplace": "rush",
            "elapsedTimeInSeconds": 2440,
            "waypoints": [
              {
                "uuid": "c86bd095-f4d4-4f03-902a-117f2c4f7fb3",
                "latitude": 35.128068,
                "longitude": -90.061473,
                "capacity": {
                  "seats": 0,
                  "trunk": -2
                },
                "type": "Pickup",
                "interleavingEvents": {
                  "pickupCount": 0,
                  "dropoffCount": 0
                },
                "state": "PENDING",
                "subState": "UNKNOWN_WAYPOINT_SUB_STATE",
                "capacityByTrait": {
                  "trunk": {}
                },
                "startTime": 1505356822,
                "finishTime": 1505357422,
                "serviceTime": 600,
                "parkingTime": 0,
                "backToParkingTime": 0
              },
              {
                "uuid": "d9392b04-6f11-4d4d-aa3e-9012f7b6b907",
                "latitude": 35.1345103,
                "longitude": -90.0607246,
                "capacity": {
                  "seats": 0,
                  "trunk": 2
                },
                "type": "Dropoff",
                "interleavingEvents": {
                  "pickupCount": 0,
                  "dropoffCount": 0
                },
                "state": "PENDING",
                "subState": "UNKNOWN_WAYPOINT_SUB_STATE",
                "capacityByTrait": {
                  "trunk": {}
                },
                "startTime": 1505356822,
                "finishTime": 1505359822,
                "serviceTime": 600,
                "parkingTime": 0,
                "backToParkingTime": 0
              }
            ],
            "vehicleViewId": 20001753,
            "upfrontFare": null,
            "isPoolJob": true,
            "eyeballEtaSec": null,
            "orgUUID": "4d045bbd-6cc4-4a7e-8d04-ed50aa29fb7c",
            "clientUUID": "c9954e19-53e5-4b90-a60c-2f1555296d03",
            "maxAllowedBatchSize": 2,
            "etdCapSec": 2700,
            "eligibleGeobaseSupplies": [
              "79013359-5700-4a0c-92a5-788643b70bd3",
              "36871903-9142-4b0f-8a54-ce8b416d11d9"
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
        "runRushSoloMGVInVRP": false,
        "doBestEffort": false,
        "doRecordFilteredReasons": false,
        "purpose": "batchability",
        "useVRPV2ForRush": false,
        "disableBatchingEfficiencyCalc": false,
        "constraintCoefficients": {
          "disallowedDispatchTypes": [
            "Pool"
          ],
          "maxWaitingTimeAfterFirstNewWaypoint": 7200,
          "allowableIncreaseMultiplierForBatchedJob": 2,
          "maxDropoffDeltaFactor": 3,
          "minDropoffAllowableIncreaseSec": 0,
          "minDutsOnTripTravelTimeSeconds": -60,
          "orderEtdFilterEnabled": false,
          "orderEtdFilterShadowEnabled": true,
          "backtrackingFilterShadowing": false,
          "traitsToMaxDistanceMeterMap": {},
          "maxStartTimeDifferenceBetweenBatchPickups": 600,
          "minDutsOverUtaRatio": -1,
          "supplyJobMaxEtaMap": {
            "79013359-5700-4a0c-92a5-788643b70bd3": {},
            "36871903-9142-4b0f-8a54-ce8b416d11d9": {}
          },
          "staticKeySupplyJobMaxEtaList": [
            {
              "supplyUuid": "79013359-5700-4a0c-92a5-788643b70bd3",
              "newJobUuid": "ba18ed5a-ffd4-40fc-be5f-7f66da1a534a"
            },
            {
              "supplyUuid": "79013359-5700-4a0c-92a5-788643b70bd3",
              "newJobUuid": "6739ba61-0aba-43b0-bfe7-784ae7895b2b"
            },
            {
              "supplyUuid": "36871903-9142-4b0f-8a54-ce8b416d11d9",
              "newJobUuid": "ba18ed5a-ffd4-40fc-be5f-7f66da1a534a"
            },
            {
              "supplyUuid": "36871903-9142-4b0f-8a54-ce8b416d11d9",
              "newJobUuid": "6739ba61-0aba-43b0-bfe7-784ae7895b2b"
            }
          ],
          "forwardDispatchToPickupMaxEta": 900,
          "eatsMgvEnabled": false,
          "maxPickUpTimeForNewVrpPlansSec": 1000000,
          "maxPickupWaitSec": 100000,
          "maxJobTripTimeIncreaseRatio": 100,
          "jobCompletionPaddingMin": 0,
          "maxJobTripTimeIncreaseSec": 1200,
          "lowerBoundOriginalTripTimeSec": 600,
          "maxPickupEtaSec": 3600,
          "maxBacktrackingAmount": 4,
          "backtrackingBaseAngle": 155,
          "crossVehicleViewMatchingEnabled": false,
          "crossVehicleViewMatchableWhitelist": [],
          "maxMasterToMinionFareThreshold": 0,
          "vehicleTraitsDesiredByClients": {},
          "orgIdToBlacklistedTraits": {
            "4e01e8b2-0d93-4d69-85fd-dd8d6da4c7c9": [
              "logistics_only",
              "rush",
              "logistics",
              "bicycle",
              "walker"
            ]
          },
          "clientIdToBlacklistedTraits": {}
        },
        "rushBoosting": {
          "shouldBoostVehicleTraits": true,
          "shouldBoostZoneBasedVehicleTraits": false,
          "traitsToMaxDistanceMeterMap": {},
          "boostVehicleTraitsMaxEtaSec": 1080
        },
        "eatsMGVParametersMap": {},
        "runPreConstraints": true,

        "bestOpenSupplyTimeOutMilliseconds":10000
      }      

EOF
) | jq .
