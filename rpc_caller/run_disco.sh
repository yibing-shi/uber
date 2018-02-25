(
curl -X POST localhost:20400/simulation/run -H "Content-Type: application/json" -d @- << EOF

{
  "creationTime": 1471346100000,
  "depsOverrides": {
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
        "rush.vrp_fetch_candidates_without_ranking_by_candidates_endpoint": true,
        "rush.solver_type": "LPRounding",
        "ueta_bulk.timeout": 100000,
        "vrp.rush.taskTimeInSeconds": 300,
        "acadia_client.enable": true,
        "acadia_client.pricing_policy_enabled": true,
        "acadia_client.vehicle_class_boosting_enabled": false,
        "vrp.rush.multileg.log_to_kafka": true,
        "rush.shadow_tcvrp": "tcVrpOnly"
      }
    },
    "geobase": {
      "supplies": [
        {
          "capacity": {
            "base": 100,
            "seats": 4
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
            "chainUUID": "02000000-0000-0000-0000-000000000005",
            "driverFareOverrideInfo": null,
            "jobs": [],
            "totalCompletedJobs": 0
          },
          "dispatchType": "regular",
          "finishedWaypoints": [],
          "geobaseType": "ForwardDispatch",
          "jobs": [],
          "jobsData": {},
          "location": {
            "latitude": 37.7878399538,
            "longitude": -122.434513257
          },
          "marketplace": [
            "personal_transport"
          ],
          "meta": "{}",
          "plan": [],
          "tenancy": "uber/simulation/964638ba-0654-4672-9c4f-3ff1358989a5",
          "uuid": "00000000-0000-0000-0000-000000000005",
          "vehicle": {
            "traits": []
          }
        },
        {
          "capacity": {
            "base": 100,
            "seats": 4
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
            "chainUUID": "02000000-0000-0000-0000-000000000006",
            "driverFareOverrideInfo": null,
            "jobs": [],
            "totalCompletedJobs": 0
          },
          "dispatchType": "regular",
          "finishedWaypoints": [],
          "geobaseType": "ForwardDispatch",
          "jobs": [],
          "jobsData": {},
          "location": {
            "latitude": 37.7959037174,
            "longitude": -122.44691132
          },
          "marketplace": [
            "personal_transport"
          ],
          "meta": "{}",
          "plan": [],
          "tenancy": "uber/simulation/964638ba-0654-4672-9c4f-3ff1358989a5",
          "uuid": "00000000-0000-0000-0000-000000000006",
          "vehicle": {
            "traits": []
          }
        }
      ]
    },
    "jobConfigurations": [
      {
        "configurations": [
          {
            "type": "PRICING_POLICY",
            "value": {
              "pricingPolicyConfiguration": {
                "baseFee": 0,
                "dropoffFee": 150,
                "minimumFare": 530,
                "perMileRate": 160,
                "perMinuteRate": 0,
                "pickupFee": 380
              }
            }
          }
        ],
        "jobUUID": "12345678-1234-5678-1234-000000000000"
      },
      {
        "configurations": [
          {
            "type": "PRICING_POLICY",
            "value": {
              "pricingPolicyConfiguration": {
                "baseFee": 0,
                "dropoffFee": 150,
                "minimumFare": 530,
                "perMileRate": 160,
                "perMinuteRate": 0,
                "pickupFee": 380
              }
            }
          }
        ],
        "jobUUID": "12345678-1234-5678-1234-000000000001"
      }
    ],
    "motown": {
      "config": {
        "hostname": "localhost",
        "port": 16296
      }
    },
    "polyline": {
      "config": {
        "hostname": "localhost",
        "port": 14716,
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
    "supply": {
      "supplies": [
        {
          "capacity": {
            "base": 100,
            "seats": 4
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
            "chainUUID": "02000000-0000-0000-0000-000000000005",
            "driverFareOverrideInfo": null,
            "jobs": [],
            "totalCompletedJobs": 0
          },
          "dispatchType": "regular",
          "finishedWaypoints": [],
          "geobaseType": "ForwardDispatch",
          "jobs": [],
          "jobsData": {},
          "location": {
            "latitude": 37.7878399538,
            "longitude": -122.434513257
          },
          "marketplace": [
            "personal_transport"
          ],
          "meta": "{}",
          "plan": [],
          "tenancy": "uber/simulation/964638ba-0654-4672-9c4f-3ff1358989a5",
          "uuid": "00000000-0000-0000-0000-000000000005",
          "vehicle": {
            "traits": []
          }
        },
        {
          "capacity": {
            "base": 100,
            "seats": 4
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
            "chainUUID": "02000000-0000-0000-0000-000000000006",
            "driverFareOverrideInfo": null,
            "jobs": [],
            "totalCompletedJobs": 0
          },
          "dispatchType": "regular",
          "finishedWaypoints": [],
          "geobaseType": "ForwardDispatch",
          "jobs": [],
          "jobsData": {},
          "location": {
            "latitude": 37.7959037174,
            "longitude": -122.44691132
          },
          "marketplace": [
            "personal_transport"
          ],
          "meta": "{}",
          "plan": [],
          "tenancy": "uber/simulation/964638ba-0654-4672-9c4f-3ff1358989a5",
          "uuid": "00000000-0000-0000-0000-000000000006",
          "vehicle": {
            "traits": []
          }
        }
      ]
    },
    "uEtaLBPool": {
      "config": {
        "host": "localhost",
        "name": "ueta",
        "port": 14200,
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
        "createdAt": 1471346100000,
        "marketplace": "rush",
        "marketplaceInfo": {
          "surge": {
            "multiplier": 2.6
          }
        },
        "tenancy": "uber/simulation/964638ba-0654-4672-9c4f-3ff1358989a5",
        "uuid": "12345678-1234-5678-1234-000000000000",
        "workflowUUID": "32345678-1234-5678-1234-000000000000",
        "requestApp": "eats-platform",
        "vehicleViewId": 1491,
        "waypoints": [
          {
            "capacity": {
              "seats": -1
            },
            "earliestStartTime": 1471347000,
            "jobUUID": "12345678-1234-5678-1234-000000000000",
            "latestStartTime": 1471347600,
            "location": {
              "latitude": 37.790733,
              "longitude": -122.434275
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
            "time_window_end": 1471347600,
            "time_window_start": 1471347000,
            "uuid": "00000000-0000-0000-0000-000000000001"
          },
          {
            "capacity": {
              "seats": 1
            },
            "jobUUID": "12345678-1234-5678-1234-000000000000",
            "location": {
              "latitude": 37.798911,
              "longitude": -122.4002471
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
      },
      {
        "client": {
          "userTags": [],
          "uuid": "22345678-1234-5678-1234-000000000000"
        },
        "completionTimeConstraintUnixSec": null,
        "createdAt": 1471346100000,
        "marketplace": "rush",
        "marketplaceInfo": {
          "surge": {
            "multiplier": 2.6
          }
        },
        "tenancy": "uber/simulation/964638ba-0654-4672-9c4f-3ff1358989a5",
        "uuid": "12345678-1234-5678-1234-000000000001",
        "workflowUUID": "32345678-1234-5678-1234-000000000001",
        "requestApp": "eats-platform",
        "vehicleViewId": 1491,
        "waypoints": [
          {
            "capacity": {
              "seats": -1
            },
            "earliestStartTime": 1471347000,
            "jobUUID": "12345678-1234-5678-1234-000000000001",
            "latestStartTime": 1471347600,
            "location": {
              "latitude": 37.790733,
              "longitude": -122.434275
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
            "time_window_end": 1471347600,
            "time_window_start": 1471347000,
            "uuid": "00000000-0000-0000-0000-000000000003"
          },
          {
            "capacity": {
              "seats": 1
            },
            "jobUUID": "12345678-1234-5678-1234-000000000001",
            "location": {
              "latitude": 37.798911,
              "longitude": -122.4002471
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
  "targetEndpoint": "/vrp/route",
  "tenancy": "uber/simulation/964638ba-0654-4672-9c4f-3ff1358989a5"
}

EOF
) | jq .

