package androidx.work.impl.utils;

import android.net.ConnectivityManager;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
@RequiresApi
public final class NetworkApi24 {
    @DoNotInline
    public static final void a(@NotNull ConnectivityManager connectivityManager, @NotNull ConnectivityManager.NetworkCallback networkCallback) {
        t.j(connectivityManager, "<this>");
        t.j(networkCallback, "networkCallback");
        connectivityManager.registerDefaultNetworkCallback(networkCallback);
    }
}
