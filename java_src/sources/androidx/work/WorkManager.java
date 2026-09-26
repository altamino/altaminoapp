package androidx.work;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.work.impl.WorkManagerImpl;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
@SuppressLint({"AddedAbstractMethod"})
public abstract class WorkManager {

    public enum UpdateResult {
        NOT_APPLIED,
        APPLIED_IMMEDIATELY,
        APPLIED_FOR_NEXT_RUN
    }

    @NonNull
    public abstract Operation a(@NonNull String tag);

    @NonNull
    public abstract Operation c(@NonNull List<? extends WorkRequest> requests);

    @RestrictTo
    protected WorkManager() {
    }

    @NonNull
    public static WorkManager d(@NonNull Context context) {
        return WorkManagerImpl.k(context);
    }

    public static void e(@NonNull Context context, @NonNull Configuration configuration) {
        WorkManagerImpl.e(context, configuration);
    }

    @NonNull
    public final Operation b(@NonNull WorkRequest workRequest) {
        return c(Collections.singletonList(workRequest));
    }
}
