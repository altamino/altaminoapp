package androidx.work.impl.workers;

import androidx.work.ListenableWorker;
import androidx.work.Logger;
import androidx.work.impl.utils.futures.SettableFuture;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class ConstraintTrackingWorkerKt {

    @NotNull
    public static final String ARGUMENT_CLASS_NAME = "androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME";

    @NotNull
    private static final String TAG;

    static {
        String strI = Logger.i("ConstraintTrkngWrkr");
        t.i(strI, "tagWithPrefix(\"ConstraintTrkngWrkr\")");
        TAG = strI;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean d(SettableFuture<ListenableWorker.Result> settableFuture) {
        return settableFuture.o(ListenableWorker.Result.a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean e(SettableFuture<ListenableWorker.Result> settableFuture) {
        return settableFuture.o(ListenableWorker.Result.b());
    }
}
