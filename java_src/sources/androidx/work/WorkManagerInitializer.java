package androidx.work;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.startup.Initializer;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public final class WorkManagerInitializer implements Initializer<WorkManager> {
    private static final String TAG = Logger.i("WrkMgrInitializer");

    @Override // androidx.startup.Initializer
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public WorkManager create(@NonNull Context context) {
        Logger.e().a(TAG, "Initializing WorkManager with default configuration.");
        WorkManager.e(context, new Configuration.Builder().a());
        return WorkManager.d(context);
    }

    @Override // androidx.startup.Initializer
    @NonNull
    public List<Class<? extends Initializer<?>>> dependencies() {
        return Collections.emptyList();
    }
}
