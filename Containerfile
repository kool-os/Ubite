FROM ghcr.io/ublue-os/bazzite-deck:stable

# Install your precise native layers
RUN rpm-ostree install papirus-icon-theme sassc

# Embed your exact local themes and Flatpak checklists system-wide
COPY themes/ /usr/share/themes/
COPY flatpaks.txt /usr/share/flatpaks.txt
