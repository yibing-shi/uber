(
curl -X POST localhost:20400/simulation/run -H "Content-Type: application/json" -H "x-uber-source: rt-demand" -d @- << EOF

{
  "creationTime": 1505317731000,
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
        "multileg.max_pool_plans.lower_bound": 25,
        "multileg.max_pool_plans.upper_bound": 25,
        "multileg.timeout": 100000,
        "plan.rush.finishTimeInSeconds": 3300,
        "plan.rush.startTimeInSeconds": 0,
        "plan.rush.taskTimeInSeconds": 300,
        "pool.constraints.max_total_cost_ratio": 0.75,
        "rush.maxBatchSizePerPickup": 3,
        "rush.pool.constraints.max_concurrent_trips": 3,
        "rush.pool.constraints.max_job_trip_time_increase_ratio": 0.7,
        "rush.pool.constraints.max_job_trip_time_increase_sec": 600,
        "rush.pool.constraints.max_pickup_wait_sec": 600,
        "rush.vrp_fetch_candidates_without_ranking_by_candidates_endpoint": true,
        "rush.shadow_tcvrp": "tcVrpOnly",
        "soloVRP.doBestEffort": true,
        "soloVRP.doRecordFilteredReasons": true,
        "soloVRP.enabled": true,
        "soloVRP.percentage": 100,
        "soloVRP.runRushSoloMGVInVRP": true,
        "ueta_bulk.timeout": 100000,
        "vrp.rush.taskTimeInSeconds": 300
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
            "chainUUID": "4e80976b-e4ea-4727-a070-7d40a233a148",
            "driverFareOverrideInfo": null,
            "jobs": [],
            "totalCompletedJobs": 0
          },
          "finishedWaypoints": [],
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
          "uuid": "4c80976b-e4ea-4727-a070-7d40a233a148",
          "vehicle": {
            "traits": []
          }
        }
      ]
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
            "chainUUID": "4e80976b-e4ea-4727-a070-7d40a233a148",
            "driverFareOverrideInfo": null,
            "jobs": [],
            "totalCompletedJobs": 0
          },
          "finishedWaypoints": [],
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
          "uuid": "4c80976b-e4ea-4727-a070-7d40a233a148",
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
        "port": 4200,
        "service": "disco",
        "timeout": 100000
      }
    }
  },
  "requestBody": {
    "job": {
      "client": {
        "userTags": [],
        "uuid": "392534d8-ea63-4f27-9a41-69d1191e0cd9"
      },
      "completionTimeConstraintUnixSec": null,
      "createdAt": 1505317731000,
      "marketplace": "rush",
      "marketplaceInfo": {
        "surge": {
          "multiplier": 1
        }
      },
      "tenancy": "uber/simulation/964638ba-0654-4672-9c4f-3ff1358989a5",
      "uuid": "97012ed6-e4ea-4727-a070-7d40a233a148",
      "vehicleViewId": 10001106,
      "waypoints": [
        {
          "capacity": {
            "seats": -1
          },
          "earliestStartTime": 1505317788,
          "jobUUID": "97012ed6-e4ea-4727-a070-7d40a233a148",
          "latestStartTime": 1505318388,
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
          "time_window_end": 1505318388,
          "time_window_start": 1505317788,
          "uuid": "00000000-0000-0000-0000-000000000001"
        },
        {
          "capacity": {
            "seats": 1
          },
          "jobUUID": "97012ed6-e4ea-4727-a070-7d40a233a148",
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
    "rankerTypes": [
      "vehicleRouting"
    ]
  },
  "targetEndpoint": "/candidates/supply/rank"
}

EOF
) | jq .
