package androidx.work;

import android.content.Context;
import android.net.Network;
import android.net.Uri;
import androidx.annotation.IntRange;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.work.impl.utils.futures.SettableFuture;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import com.google.common.util.concurrent.k;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.Executor;
import kotlinx.serialization.json.internal.b;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ListenableWorker {

    @NonNull
    private Context mAppContext;
    private volatile boolean mStopped;
    private boolean mUsed;

    @NonNull
    private WorkerParameters mWorkerParams;

    public static abstract class Result {

        @RestrictTo
        public static final class Failure extends Result {
            private final Data mOutputData;

            public Failure() {
                this(Data.EMPTY);
            }

            @NonNull
            public Data e() {
                return this.mOutputData;
            }

            public Failure(@NonNull Data outputData) {
                this.mOutputData = outputData;
            }

            public boolean equals(Object o) {
                if (this == o) {
                    return true;
                }
                if (o == null || Failure.class != o.getClass()) {
                    return false;
                }
                return this.mOutputData.equals(((Failure) o).mOutputData);
            }

            public int hashCode() {
                return (Failure.class.getName().hashCode() * 31) + this.mOutputData.hashCode();
            }

            @NonNull
            public String toString() {
                return "Failure {mOutputData=" + this.mOutputData + b.END_OBJ;
            }
        }

        @RestrictTo
        public static final class Retry extends Result {
            public boolean equals(Object o) {
                if (this == o) {
                    return true;
                }
                return o != null && Retry.class == o.getClass();
            }

            @NonNull
            public String toString() {
                return "Retry";
            }

            public int hashCode() {
                return Retry.class.getName().hashCode();
            }
        }

        @RestrictTo
        public static final class Success extends Result {
            private final Data mOutputData;

            public Success() {
                this(Data.EMPTY);
            }

            @NonNull
            public Data e() {
                return this.mOutputData;
            }

            public Success(@NonNull Data outputData) {
                this.mOutputData = outputData;
            }

            public boolean equals(Object o) {
                if (this == o) {
                    return true;
                }
                if (o == null || Success.class != o.getClass()) {
                    return false;
                }
                return this.mOutputData.equals(((Success) o).mOutputData);
            }

            public int hashCode() {
                return (Success.class.getName().hashCode() * 31) + this.mOutputData.hashCode();
            }

            @NonNull
            public String toString() {
                return "Success {mOutputData=" + this.mOutputData + b.END_OBJ;
            }
        }

        @NonNull
        public static Result a() {
            return new Failure();
        }

        @NonNull
        public static Result b() {
            return new Retry();
        }

        @NonNull
        public static Result c() {
            return new Success();
        }

        @NonNull
        public static Result d(@NonNull Data outputData) {
            return new Success(outputData);
        }

        @RestrictTo
        Result() {
        }
    }

    @NonNull
    public final Context getApplicationContext() {
        return this.mAppContext;
    }

    public final boolean isStopped() {
        return this.mStopped;
    }

    @RestrictTo
    public final boolean isUsed() {
        return this.mUsed;
    }

    public void onStopped() {
    }

    @RestrictTo
    public final void setUsed() {
        this.mUsed = true;
    }

    @NonNull
    @MainThread
    public abstract k<Result> startWork();

    @RestrictTo
    public final void stop() {
        this.mStopped = true;
        onStopped();
    }

    @NonNull
    @RestrictTo
    public Executor getBackgroundExecutor() {
        return this.mWorkerParams.a();
    }

    @NonNull
    public final UUID getId() {
        return this.mWorkerParams.c();
    }

    @NonNull
    public final Data getInputData() {
        return this.mWorkerParams.d();
    }

    @Nullable
    @RequiresApi
    public final Network getNetwork() {
        return this.mWorkerParams.e();
    }

    @IntRange
    public final int getRunAttemptCount() {
        return this.mWorkerParams.g();
    }

    @NonNull
    public final Set<String> getTags() {
        return this.mWorkerParams.h();
    }

    @NonNull
    @RestrictTo
    public TaskExecutor getTaskExecutor() {
        return this.mWorkerParams.i();
    }

    @NonNull
    @RequiresApi
    public final List<String> getTriggeredContentAuthorities() {
        return this.mWorkerParams.j();
    }

    @NonNull
    @RequiresApi
    public final List<Uri> getTriggeredContentUris() {
        return this.mWorkerParams.k();
    }

    @NonNull
    @RestrictTo
    public WorkerFactory getWorkerFactory() {
        return this.mWorkerParams.l();
    }

    @NonNull
    public final k<Void> setForegroundAsync(@NonNull ForegroundInfo foregroundInfo) {
        return this.mWorkerParams.b().a(getApplicationContext(), getId(), foregroundInfo);
    }

    @NonNull
    public k<Void> setProgressAsync(@NonNull Data data) {
        return this.mWorkerParams.f().a(getApplicationContext(), getId(), data);
    }

    public ListenableWorker(@NonNull Context appContext, @NonNull WorkerParameters workerParams) {
        if (appContext != null) {
            if (workerParams != null) {
                this.mAppContext = appContext;
                this.mWorkerParams = workerParams;
                return;
            }
            throw new IllegalArgumentException("WorkerParameters is null");
        }
        throw new IllegalArgumentException("Application Context is null");
    }

    @NonNull
    public k<ForegroundInfo> getForegroundInfoAsync() {
        SettableFuture settableFutureS = SettableFuture.s();
        settableFutureS.p(new IllegalStateException("Expedited WorkRequests require a ListenableWorker to provide an implementation for `getForegroundInfoAsync()`"));
        return settableFutureS;
    }
}
