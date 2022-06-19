# admission controllers

These files demonstrate basic OPA Gatekeeper and Kyverno policies.

## Usage

Provision OPA Gatekeeper, Gatekeeper pod label constraint, pod fleet. You should see an error because we've intentionally tried to create an illegal pod.

```
make gatekeeper:a
make gkcon:a
make fleet:a
```

Delete everything

```
make gatekeeper:d
make gkcon:d
make fleet:d
```

Provision Kyverno, Kyverno label constraint, pod fleet. You should see an error because we've intentionally tried to create an illegal pod.

```
make kyverno:a
make kcon:a
make fleet:a
```

Delete everything

```
make kyverno:d
make kcon:d
make fleet:d
```
