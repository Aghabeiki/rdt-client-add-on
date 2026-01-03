# Maintenance

## How to Update

### Updating the Addon Wrapper
To update the addon (e.g., changes to scripts, config, or new indexers):
1.  Verify the new files are in place.
2.  Edit `prowlarr/config.yaml`.
3.  Increment the `version` field (e.g., `1.0.0` -> `1.0.1`).
4.  Commit and push the changes:
    ```bash
    git add prowlarr/
    git commit -m "Bump version to 1.0.1"
    git push
    ```
5.  In Home Assistant, go to **Add-ons > Add-on Store**, click the **...** menu, and **Check for updates**.

### Updating Prowlarr Version
To update the underlying Prowlarr version:
1.  Edit `prowlarr/Dockerfile`.
2.  Update the `PROWLARR_VERSION` argument to the desired version (check Prowlarr releases).
3.  Increment the `version` in `prowlarr/config.yaml` to trigger an update in Home Assistant.
4.  Commit and push as above.

### Updating Custom Indexers
To update the bundled indexers (e.g., new Torrentio config):
1.  Replace the YAML files in `prowlarr/rootfs/opt/custom-indexers/`.
2.  Increment the `version` in `prowlarr/config.yaml`.
3.  Commit and push.
