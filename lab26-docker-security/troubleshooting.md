# Troubleshooting – Lab 26 Docker Security Basics

1. **Legacy builder warning**  
   - Message: `DEPRECATED: The legacy builder is deprecated...`  
   - Fix: Install `buildx` (optional). Not blocking.

2. **Permission errors with dropped capabilities**  
   - Expected when using `--cap-drop=NET_ADMIN`. Confirms restrictions.

3. **Silent success with `--cap-add`**  
   - No error message means capability worked correctly.

4. **Ephemeral VM shutdown**  
   - At the end of the lab, the VM powered off automatically due to token timeout (Alnafi cloud).  
   - Resolution: Restart lab VM and continue from last saved step if needed.
