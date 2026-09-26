package androidx.core.os;

import android.os.OutcomeReceiver;
import androidx.annotation.RequiresApi;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
@RequiresApi
public final class OutcomeReceiverKt {
    @RequiresApi
    @NotNull
    public static final <R, E extends Throwable> OutcomeReceiver a(@NotNull kotlin.coroutines.d<? super R> dVar) {
        t.j(dVar, "<this>");
        return d.a(new ContinuationOutcomeReceiver(dVar));
    }
}
