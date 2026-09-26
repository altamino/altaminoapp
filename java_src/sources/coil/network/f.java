package coil.network;

import android.content.Context;
import android.net.ConnectivityManager;
import androidx.core.content.ContextCompat;
import coil.util.q;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class f {

    @NotNull
    private static final String TAG = "NetworkObserver";

    @NotNull
    public static final e a(@NotNull Context context, @NotNull e.a aVar, @Nullable q qVar) {
        ConnectivityManager connectivityManager = (ConnectivityManager) ContextCompat.getSystemService(context, ConnectivityManager.class);
        if (connectivityManager == null || !coil.util.d.e(context, "android.permission.ACCESS_NETWORK_STATE")) {
            if (qVar != null && qVar.b() <= 5) {
                qVar.a(TAG, 5, "Unable to register network observer.", null);
            }
            return new c();
        }
        try {
            return new g(connectivityManager, aVar);
        } catch (Exception e) {
            if (qVar != null) {
                coil.util.g.a(qVar, TAG, new RuntimeException("Failed to register network observer.", e));
            }
            return new c();
        }
    }
}
