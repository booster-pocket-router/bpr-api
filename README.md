# bpr-api

Programmatically interact with settings and measurements

## Goal

This project develops the API to programmatically interact with the booster pocket router.

## Execution

The server can be started using `mix deps.get && mix phx.server` from the command line\*. The API is then reachable at [`localhost:4000`](http://localhost:4000).

\* This project is developed and tested on MacOS. So far, we do not conduct cross-plattform tests.

## API

The available API so far includes:

- [`/api/v1/status/nodes`](http://localhost:4000/api/v1/status/nodes) displays connected nodes and their meta-data.
- [`/api/v1/status/utilization`](http://localhost:4000/api/v1/status/utilization) displays connected nodes and their utilization measurements.
- [`/api/v1/settings/set`](http://localhost:4000/api/v1/settings/set) allows to store a setting in a key-value store.
- [`/api/v1/settings/get`](http://localhost:4000/api/v1/settings/set) allows to retrieve a setting from a key-value store.
