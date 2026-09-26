package okhttp3;

import java.net.InetSocketAddress;
import java.net.Proxy;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class Route {

    @NotNull
    private final Address address;

    @NotNull
    private final Proxy proxy;

    @NotNull
    private final InetSocketAddress socketAddress;

    @NotNull
    /* JADX INFO: renamed from: -deprecated_address, reason: not valid java name */
    public final Address m1773deprecated_address() {
        return this.address;
    }

    @NotNull
    /* JADX INFO: renamed from: -deprecated_proxy, reason: not valid java name */
    public final Proxy m1774deprecated_proxy() {
        return this.proxy;
    }

    @NotNull
    /* JADX INFO: renamed from: -deprecated_socketAddress, reason: not valid java name */
    public final InetSocketAddress m1775deprecated_socketAddress() {
        return this.socketAddress;
    }

    @NotNull
    public final Address address() {
        return this.address;
    }

    @NotNull
    public final Proxy proxy() {
        return this.proxy;
    }

    @NotNull
    public final InetSocketAddress socketAddress() {
        return this.socketAddress;
    }

    public Route(@NotNull Address address, @NotNull Proxy proxy, @NotNull InetSocketAddress socketAddress) {
        t.j(address, "address");
        t.j(proxy, "proxy");
        t.j(socketAddress, "socketAddress");
        this.address = address;
        this.proxy = proxy;
        this.socketAddress = socketAddress;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof Route) {
            Route route = (Route) obj;
            if (t.e(route.address, this.address) && t.e(route.proxy, this.proxy) && t.e(route.socketAddress, this.socketAddress)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((((527 + this.address.hashCode()) * 31) + this.proxy.hashCode()) * 31) + this.socketAddress.hashCode();
    }

    public final boolean requiresTunnel() {
        return this.address.sslSocketFactory() != null && this.proxy.type() == Proxy.Type.HTTP;
    }

    @NotNull
    public String toString() {
        return "Route{" + this.socketAddress + kotlinx.serialization.json.internal.b.END_OBJ;
    }
}
