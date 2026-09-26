package androidx.work;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;

/* JADX INFO: loaded from: classes4.dex */
public abstract class WorkerFactory {
    private static final String TAG = Logger.i("WorkerFactory");

    @Nullable
    public abstract ListenableWorker a(@NonNull Context appContext, @NonNull String workerClassName, @NonNull WorkerParameters workerParameters);

    @NonNull
    @RestrictTo
    public static WorkerFactory c() {
        return new WorkerFactory() { // from class: androidx.work.WorkerFactory.1
            @Override // androidx.work.WorkerFactory
            @Nullable
            public ListenableWorker a(@NonNull Context appContext, @NonNull String workerClassName, @NonNull WorkerParameters workerParameters) {
                return null;
            }
        };
    }

    @Nullable
    @RestrictTo
    public final ListenableWorker b(@NonNull Context appContext, @NonNull String workerClassName, @NonNull WorkerParameters workerParameters) {
        Class clsAsSubclass;
        ListenableWorker listenableWorkerA = a(appContext, workerClassName, workerParameters);
        if (listenableWorkerA == null) {
            try {
                clsAsSubclass = Class.forName(workerClassName).asSubclass(ListenableWorker.class);
            } catch (Throwable th) {
                Logger.e().d(TAG, "Invalid class: " + workerClassName, th);
                clsAsSubclass = null;
            }
            if (clsAsSubclass != null) {
                try {
                    listenableWorkerA = (ListenableWorker) clsAsSubclass.getDeclaredConstructor(Context.class, WorkerParameters.class).newInstance(appContext, workerParameters);
                } catch (Throwable th2) {
                    Logger.e().d(TAG, "Could not instantiate " + workerClassName, th2);
                }
            }
        }
        if (listenableWorkerA != null && listenableWorkerA.isUsed()) {
            throw new IllegalStateException("WorkerFactory (" + getClass().getName() + ") returned an instance of a ListenableWorker (" + workerClassName + ") which has already been invoked. createWorker() must always return a new instance of a ListenableWorker.");
        }
        return listenableWorkerA;
    }
}
