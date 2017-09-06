
# consul 0.9.3-rc1
Test a consul cluster recovering when the ip of every member in the cluster changes.

Set up the port-forward in another shell between step 01 and 02:
```
$ kubectl port-forward consul-test-0 8500:8500
```
