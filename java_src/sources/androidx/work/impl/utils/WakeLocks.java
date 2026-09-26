package androidx.work.impl.utils;

import android.content.Context;
import android.os.PowerManager;
import androidx.work.Logger;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
public final class WakeLocks {

    @NotNull
    private static final String TAG;

    static {
        String strI = Logger.i("WakeLocks");
        t.i(strI, "tagWithPrefix(\"WakeLocks\")");
        TAG = strI;
    }

    public static final void a() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        WakeLocksHolder wakeLocksHolder = WakeLocksHolder.INSTANCE;
        synchronized (wakeLocksHolder) {
            linkedHashMap.putAll(wakeLocksHolder.a());
            l0 l0Var = l0.INSTANCE;
        }
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            PowerManager.WakeLock wakeLock = (PowerManager.WakeLock) entry.getKey();
            String str = (String) entry.getValue();
            if (wakeLock != null && wakeLock.isHeld()) {
                Logger.e().k(TAG, "WakeLock held for " + str);
            }
        }
    }

    @NotNull
    public static final PowerManager.WakeLock b(@NotNull Context context, @NotNull String tag) {
        t.j(context, "context");
        t.j(tag, "tag");
        Object systemService = context.getApplicationContext().getSystemService("power");
        t.h(systemService, "null cannot be cast to non-null type android.os.PowerManager");
        String str = "WorkManager: " + tag;
        PowerManager.WakeLock wakeLock = ((PowerManager) systemService).newWakeLock(1, str);
        WakeLocksHolder wakeLocksHolder = WakeLocksHolder.INSTANCE;
        synchronized (wakeLocksHolder) {
            wakeLocksHolder.a().put(wakeLock, str);
        }
        t.i(wakeLock, "wakeLock");
        return wakeLock;
    }
}
