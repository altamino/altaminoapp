package androidx.work;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes9.dex */
public class DelegatingWorkerFactory extends WorkerFactory {
    private static final String TAG = Logger.i("DelegatingWkrFctry");
    private final List<WorkerFactory> mFactories = new CopyOnWriteArrayList();

    @Override // androidx.work.WorkerFactory
    @Nullable
    public final ListenableWorker a(@NonNull Context appContext, @NonNull String workerClassName, @NonNull WorkerParameters workerParameters) {
        Iterator<WorkerFactory> it = this.mFactories.iterator();
        while (it.hasNext()) {
            try {
                ListenableWorker listenableWorkerA = it.next().a(appContext, workerClassName, workerParameters);
                if (listenableWorkerA != null) {
                    return listenableWorkerA;
                }
            } catch (Throwable th) {
                Logger.e().d(TAG, "Unable to instantiate a ListenableWorker (" + workerClassName + ")", th);
                throw th;
            }
        }
        return null;
    }
}
