FROM ghcr.io/ublue-os/bluefin-dx:stable

# Nix needs a top-level /nix mountpoint.
# On composefs systems this must exist in the immutable image.
RUN install -d -m 0755 -o root -g root /nix

### LINTING
## Verify final image and contents are correct.
RUN bootc container lint
