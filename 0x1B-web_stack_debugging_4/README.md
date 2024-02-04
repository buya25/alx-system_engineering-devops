tack Debugging Project - Task 0

## Introduction
This Puppet manifest (`0-the_sky_is_the_limit_not.pp`) is designed to address and fix performance issues in a web server setup featuring Nginx. The issue at hand involves a significant number of failed requests when subjected to a high load using ApacheBench.

## Requirements
1. Puppet manifests must pass puppet-lint version 2.1.1 without any errors.
2. Puppet manifests must run without error.
3. Puppet manifests first line must be a comment explaining what the Puppet manifest is about.
4. Puppet manifests files must end with the extension .pp.
5. Files will be checked with Puppet v3.4.

## Puppet Manifest Explanation
The Puppet manifest aims to resolve the performance issue by making the necessary configurations to the Nginx server. It involves tuning Nginx settings to handle a higher number of concurrent connections and requests.

### Changes Made
1. Adjusted Nginx configuration settings to handle a higher number of concurrent connections and requests.
2. Optimized various parameters like worker_processes, worker_connections, and keepalive_timeout.

## How to Use
1. Clone the GitHub repository:

   ```bash
   git clone https://github.com/username/alx-system_engineering-devops.git
   ```

2. Navigate to the directory of the project:

   ```bash
   cd alx-system_engineering-devops/0x1B-web_stack_debugging_4
   ```

3. Apply the Puppet manifest:

   ```bash
   puppet apply 0-the_sky_is_the_limit_not.pp
   ```

4. After applying the manifest, use ApacheBench to benchmark the server again:

   ```bash
   ab -c 100 -n 2000 localhost/
   ```

   Verify that the number of failed requests is reduced or eliminated.

## Testing Results
Before applying the Puppet manifest:
- Failed requests: 943

After applying the Puppet manifest:
- Failed requests: 0

The performance issue has been resolved, and the server can now handle a high load more efficiently.

### ApacheBench Results
```bash
Server Software:        nginx/1.4.6
Server Hostname:        localhost
Server Port:            80

Document Path:          /
Document Length:        612 bytes

Concurrency Level:      100
Time taken for tests:   0.301 seconds
Complete requests:      2000
Failed requests:        0
Total transferred:      1706000 bytes
HTML transferred:       1224000 bytes
Requests per second:    6650.99 [#/sec] (mean)
Time per request:       15.035 [ms] (mean)
Time per request:       0.150 [ms] (mean, across all concurrent requests)
Transfer rate:          5540.33 [Kbytes/sec] received
```

The server now successfully handles the high load, and all requests are completed without failures.

## Conclusion
This Puppet manifest provides a solution to the web server's performance issue, ensuring that it can handle a higher load of concurrent requests without experiencing failures. The Nginx configurations have been optimized to achieve better performance under stress testing.
