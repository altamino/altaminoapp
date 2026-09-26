package coil.network;

import android.annotation.SuppressLint;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkRequest;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
@SuppressLint({"MissingPermission"})
final class g implements e {

    @NotNull
    private final ConnectivityManager connectivityManager;

    @NotNull
    private final e.a listener;

    @NotNull
    private final a networkCallback;

    public static final class a extends ConnectivityManager.NetworkCallback {
        a() {
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(@NotNull Network network) {
            g.this.d(network, true);
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(@NotNull Network network) {
            g.this.d(network, false);
        }
    }

    private final boolean c(Network network) {
        NetworkCapabilities networkCapabilities = this.connectivityManager.getNetworkCapabilities(network);
        return networkCapabilities != null && networkCapabilities.hasCapability(12);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d(Network network, boolean z6) {
        boolean z10 = false;
        for (Network network2 : this.connectivityManager.getAllNetworks()) {
            if (t.e(network2, network) ? z6 : c(network2)) {
                z10 = true;
                break;
            }
        }
        this.listener.a(z10);
    }

    @Override // coil.network.e
    public boolean a() {
        for (Network network : this.connectivityManager.getAllNetworks()) {
            if (c(network)) {
                return true;
            }
        }
        return false;
    }

    @Override // coil.network.e
    public void shutdown() {
        this.connectivityManager.unregisterNetworkCallback(this.networkCallback);
    }

    public g(@NotNull ConnectivityManager connectivityManager, @NotNull e.a aVar) {
        this.connectivityManager = connectivityManager;
        this.listener = aVar;
        a aVar2 = new a();
        this.networkCallback = aVar2;
        connectivityManager.registerNetworkCallback(new NetworkRequest.Builder().addCapability(12).build(), aVar2);
    }
}
