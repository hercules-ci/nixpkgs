self: super: {
  cairo = super.cairo.override { x11Support = false; };
  dbus = super.dbus.override { x11Support = false; };
  beam = super.beam_nox;
  networkmanager-fortisslvpn = super.networkmanager-fortisslvpn.override { withGnome = false; };
  networkmanager-iodine = super.networkmanager-iodine.override { withGnome = false; };
  networkmanager-l2tp = super.networkmanager-l2tp.override { withGnome = false; };
  networkmanager-openconnect = super.networkmanager-openconnect.override { withGnome = false; };
  networkmanager-openvpn = super.networkmanager-openvpn.override { withGnome = false; };
  networkmanager-sstp = super.networkmanager-vpnc.override { withGnome = false; };
  networkmanager-vpnc = super.networkmanager-vpnc.override { withGnome = false; };
  gobject-introspection = super.gobject-introspection.override { x11Support = false; };
  qemu = super.qemu.override { gtkSupport = false; spiceSupport = false; sdlSupport = false; };
}
