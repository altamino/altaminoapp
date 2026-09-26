package androidx.work.impl.constraints.trackers;

import androidx.work.Logger;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class BatteryChargingTrackerKt {

    @NotNull
    private static final String TAG;

    static {
        String strI = Logger.i("BatteryChrgTracker");
        t.i(strI, "tagWithPrefix(\"BatteryChrgTracker\")");
        TAG = strI;
    }
}
