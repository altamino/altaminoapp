package androidx.work.impl.constraints.trackers;

import androidx.work.Logger;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class BroadcastReceiverConstraintTrackerKt {

    @NotNull
    private static final String TAG;

    static {
        String strI = Logger.i("BrdcstRcvrCnstrntTrckr");
        t.i(strI, "tagWithPrefix(\"BrdcstRcvrCnstrntTrckr\")");
        TAG = strI;
    }
}
