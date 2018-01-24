(
curl -X POST localhost:20400/simulation/run -H "Content-Type: application/json" -d @- << EOF

{
  "creationTime": 1486131240000,
  "depsOverrides": {
    "candidates": {
      "candidates": {
        "jobToEligibleGeobaseSupplies": {
          "c0420528-8c8b-4e93-93a2-733b83789c94": [
            "73c6a87f-e543-4ff8-8f6c-7de8f3dc6200",
            "61210294-8c8b-4e93-93a2-733b83789c94"
          ]
        },
        "jobToSupplies": {
          "c0420528-8c8b-4e93-93a2-733b83789c94": [
            "73c6a87f-e543-4ff8-8f6c-7de8f3dc6200",
            "61210294-8c8b-4e93-93a2-733b83789c94"
          ]
        },
        "supplyMap": {
          "61210294-8c8b-4e93-93a2-733b83789c94": {
            "_sourceQuery": {
              "type": "ForwardDispatch"
            },
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
            "chainedJobsInfo": {
              "chainUUID": "63210294-8c8b-4e93-93a2-733b83789c94",
              "driverFareOverrideInfo": null,
              "jobs": [],
              "totalCompletedJobs": 0
            },
            "dispatchType": "regular",
            "driver": {
              "totalTrips": 0
            },
            "experimentInfo": {},
            "finishedWaypoints": [],
            "geobaseRank": 0,
            "geobaseSupplySetIndex": 1,
            "incentiveGeofenceUUIDs": [],
            "jobs": [],
            "jobsData": {},
            "location": {
              "latitude": 38.845975,
              "longitude": -76.982696
            },
            "meta": {},
            "plan": [],
            "rankingTimestampsSec": {},
            "uLocations": [
              null
            ],
            "userTags": [],
            "uuid": "61210294-8c8b-4e93-93a2-733b83789c94",
            "vehicle": {
              "traits": []
            }
          },
          "73c6a87f-e543-4ff8-8f6c-7de8f3dc6200": {
            "_sourceQuery": {
              "type": "Pool"
            },
            "capacityV2": {
              "physicalCapacity": {
                "seats": 4
              },
              "policyCapacity": {
                "nEatsJobs": 3,
                "nPTJobs": 3,
                "nRushJobs": 2
              }
            },
            "chainedJobsInfo": {
              "chainUUID": "75c6a87f-e543-4ff8-8f6c-7de8f3dc6200",
              "driverFareOverrideInfo": {
                "jobUUID": "71c6a87f-e543-4ff8-8f6c-7de8f3dc6200",
                "surge": {
                  "multiplier": 1,
                  "uuid": "surge_71c6a87f-e543-4ff8-8f6c-7de8f3dc6200"
                },
                "vehicleViewId": 11223
              },
              "jobs": [],
              "totalCompletedJobs": 0
            },
            "dispatchType": "pool",
            "driver": {
              "totalTrips": 0
            },
            "experimentInfo": {},
            "finishedWaypoints": [],
            "geobaseRank": 0,
            "geobaseSupplySetIndex": 0,
            "incentiveGeofenceUUIDs": [],
            "isPoolSupply": true,
            "jobs": [
              {
                "client": {
                  "userTags": [],
                  "uuid": "22345678-1234-5678-1234-000000000000"
                },
                "completionTimeConstraintUnixSec": null,
                "createdAt": 1486130971000,
                "marketplace": "rush",
                "marketplaceInfo": {
                  "surge": {
                    "multiplier": 1
                  }
                },
                "paymentType": "default",
                "tenancy": "uber/simulation/964638ba-0654-4672-9c4f-3ff1358989a5",
                "uuid": "71c6a87f-e543-4ff8-8f6c-7de8f3dc6200",
                "vehicleViewId": 11223,
                "waypoints": [
                  {
                    "capacity": {
                      "seats": -1
                    },
                    "earliestStartTime": 1486131331,
                    "jobUUID": "71c6a87f-e543-4ff8-8f6c-7de8f3dc6200",
                    "latestStartTime": 1486131931,
                    "location": {
                      "latitude": 38.845975,
                      "longitude": -76.982696
                    },
                    "marketplace": "rush",
                    "status": "PENDING",
                    "tasks": [
                      {
                        "completed": false,
                        "marketplace": "",
                        "marketplaceInfo": {
                          "taskType": "pickup"
                        }
                      }
                    ],
                    "time_window_end": 1486131931,
                    "time_window_start": 1486131331,
                    "uuid": "00000000-0000-0000-0000-000000000001"
                  },
                  {
                    "capacity": {
                      "seats": 1
                    },
                    "jobUUID": "71c6a87f-e543-4ff8-8f6c-7de8f3dc6200",
                    "location": {
                      "latitude": 38.8553282,
                      "longitude": -76.9564525
                    },
                    "marketplace": "rush",
                    "status": "PENDING",
                    "tasks": [
                      {
                        "completed": false,
                        "marketplace": "",
                        "marketplaceInfo": {
                          "taskType": "dropoff"
                        }
                      }
                    ],
                    "time_window_end": null,
                    "time_window_start": null,
                    "uuid": "00000000-0000-0000-0000-000000000002"
                  }
                ]
              }
            ],
            "jobsData": {
              "71c6a87f-e543-4ff8-8f6c-7de8f3dc6200": {
                "paymentType": "default",
                "requestVVID": 11223
              }
            },
            "location": {
              "latitude": 38.85266333333334,
              "longitude": -76.98789000000001
            },
            "meta": {},
            "plan": {
              "generatedAt": 1506545296,
              "waypoints": [
                {
                  "capacity": {
                    "seats": -1
                  },
                  "distanceFromPrevWaypointMeters": 1412,
                  "earliestStartTime": 1486131331,
                  "eta": 225,
                  "haversineDistanceFromPrevWaypointMeters": 869,
                  "jobUUID": "71c6a87f-e543-4ff8-8f6c-7de8f3dc6200",
                  "latestStartTime": 1486131931,
                  "location": {
                    "latitude": 38.845975,
                    "longitude": -76.982696
                  },
                  "marketplace": "rush",
                  "predictedTaskTime": 300,
                  "status": "PENDING",
                  "tasks": [
                    {
                      "completed": false,
                      "marketplace": "",
                      "marketplaceInfo": {
                        "taskType": "pickup"
                      }
                    }
                  ],
                  "timeSource": "gurafu",
                  "time_window_end": 1486131931,
                  "time_window_start": 1486131331,
                  "travelTimeFromPrevWaypointSec": 225,
                  "unmodifiedTravelTimeFromPrevWaypointSec": 165,
                  "uuid": "00000000-0000-0000-0000-000000000001"
                },
                {
                  "capacity": {
                    "seats": 1
                  },
                  "distanceFromPrevWaypointMeters": 3364,
                  "eta": 367,
                  "haversineDistanceFromPrevWaypointMeters": 2504,
                  "jobUUID": "71c6a87f-e543-4ff8-8f6c-7de8f3dc6200",
                  "location": {
                    "latitude": 38.8553282,
                    "longitude": -76.9564525
                  },
                  "marketplace": "rush",
                  "predictedTaskTime": 300,
                  "status": "PENDING",
                  "tasks": [
                    {
                      "completed": false,
                      "marketplace": "",
                      "marketplaceInfo": {
                        "taskType": "dropoff"
                      }
                    }
                  ],
                  "timeSource": "gurafu",
                  "time_window_end": null,
                  "time_window_start": null,
                  "travelTimeFromPrevWaypointSec": 367,
                  "unmodifiedTravelTimeFromPrevWaypointSec": 307,
                  "uuid": "00000000-0000-0000-0000-000000000002"
                }
              ]
            },
            "rankingTimestampsSec": {
              "originalPlanGeneratedAt": 1506545296
            },
            "uLocations": [
              null
            ],
            "userTags": [],
            "uuid": "73c6a87f-e543-4ff8-8f6c-7de8f3dc6200",
            "vehicle": {
              "traits": []
            }
          }
        }
      }
    },
    "ezpz": {
      "config": {
        "host": "localhost",
        "port": 4567,
        "source": "rt-disco",
        "timeout": 100000
      }
    },
    "flipr": {
      "overrides": {
        "candidates.rush.maxPoolSize": 3,
        "candidates.rush.taskTimeInSeconds": 300,
        "candidates.uEta.timeout": 100000,
        "enable_fifo_pool_map_reduce": false,
        "ezpz_route_timeout_ms": 5000,
        "ezpz_timeout": 5000,
        "gurafu_fetch_polyline_timeout_in_ms": 100000,
        "gurafu_fetch_route_segments_timeout_in_ms": 100000,
        "map.reduce.enable.percentage": 0,
        "multileg.timeout": 100000,
        "personal_transport.pool.constraints.max_job_trip_time_increase_ratio": 0.7,
        "personal_transport.pool.constraints.max_job_trip_time_increase_sec": 600,
        "personal_transport.pool.constraints.max_pickup_wait_sec": 600,
        "plan.rush.finishTimeInSeconds": 3300,
        "plan.rush.startTimeInSeconds": 0,
        "plan.rush.taskTimeInSeconds": 300,
        "pool.constraints.max_total_cost_ratio": 0.75,
        "rush.maxBatchSizePerPickup": 3,
        "rush.pool.constraints.max_concurrent_trips": 3,
        "ueta_bulk.timeout": 100000,
        "vrp.rush.taskTimeInSeconds": 300
      }
    },
    "motown": {
      "config": {
        "hostname": "localhost",
        "port": 6296
      }
    },
    "polyline": {
      "config": {
        "hostname": "localhost",
        "port": 4716,
        "service": "disco",
        "serviceName": "gurafu"
      }
    },
    "powerhouse": {
      "config": {
        "host": "localhost"
      }
    },
    "routePlanner": {
      "config": {
        "clientName": "multileg-sirvice-client",
        "filterRequest": false,
        "filterResponse": false,
        "host": "localhost",
        "port": 4725,
        "validateRequest": false,
        "validateResponse": false
      }
    },
    "uEtaLBPool": {
      "config": {
        "host": "localhost",
        "name": "ueta",
        "port": 4200,
        "service": "disco",
        "timeout": 100000
      }
    }
  },
  "requestBody": {
    "jobs": [
      {
        "client": {
          "userTags": [],
          "uuid": "22345678-1234-5678-1234-000000000000"
        },
        "completionTimeConstraintUnixSec": null,
        "createdAt": 1486131240000,
        "marketplace": "rush",
        "marketplaceInfo": {
          "surge": {
            "multiplier": 1
          }
        },
        "tenancy": "uber/simulation/964638ba-0654-4672-9c4f-3ff1358989a5",
        "uuid": "c0420528-8c8b-4e93-93a2-733b83789c94",
        "vehicleViewId": 11223,
        "waypoints": [
          {
            "capacity": {
              "seats": -1
            },
            "earliestStartTime": 1486131879,
            "jobUUID": "c0420528-8c8b-4e93-93a2-733b83789c94",
            "latestStartTime": 1486132479,
            "location": {
              "latitude": 38.845975,
              "longitude": -76.982696
            },
            "marketplace": "rush",
            "status": "PENDING",
            "tasks": [
              {
                "completed": false,
                "marketplace": "",
                "marketplaceInfo": {
                  "taskType": "pickup"
                }
              }
            ],
            "time_window_end": 1486132479,
            "time_window_start": 1486131879,
            "uuid": "00000000-0000-0000-0000-000000000003"
          },
          {
            "capacity": {
              "seats": 1
            },
            "jobUUID": "c0420528-8c8b-4e93-93a2-733b83789c94",
            "location": {
              "latitude": 38.85591326285047,
              "longitude": -76.97435206740812
            },
            "marketplace": "rush",
            "status": "PENDING",
            "tasks": [
              {
                "completed": false,
                "marketplace": "",
                "marketplaceInfo": {
                  "taskType": "dropoff"
                }
              }
            ],
            "time_window_end": null,
            "time_window_start": null,
            "uuid": "00000000-0000-0000-0000-000000000004"
          }
        ]
      }
    ]
  },
  "targetEndpoint": "/vrp/route"
}

EOF
) | jq .
