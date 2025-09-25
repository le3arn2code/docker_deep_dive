# Lab 26 – Docker Security Basics

## Objectives
- Understand the importance of Docker security.
- Learn how to run containers with non-root users.
- Explore capabilities (`--cap-drop`, `--cap-add`).
- Reduce attack surface of Docker containers.

## What We Did
1. Created a `Dockerfile` with a non-root user (`appuser`) and a simple script.
2. Built the image and confirmed container runs as `appuser`.
3. Tested dropping capabilities (`NET_ADMIN`) which blocked privileged actions.
4. Tested adding capabilities back (`NET_ADMIN`) which allowed privileged actions.
5. Ran the container with memory and CPU limits to restrict resource abuse.

## Outcome
- Containers ran securely as non-root.
- Capability management worked as expected.
- Resource limits enforced successfully.
