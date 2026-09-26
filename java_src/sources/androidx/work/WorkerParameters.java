package androidx.work;

import android.net.Network;
import android.net.Uri;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes9.dex */
public final class WorkerParameters {

    @NonNull
    private Executor mBackgroundExecutor;

    @NonNull
    private ForegroundUpdater mForegroundUpdater;
    private int mGeneration;

    @NonNull
    private UUID mId;

    @NonNull
    private Data mInputData;

    @NonNull
    private ProgressUpdater mProgressUpdater;
    private int mRunAttemptCount;

    @NonNull
    private RuntimeExtras mRuntimeExtras;

    @NonNull
    private Set<String> mTags;

    @NonNull
    private TaskExecutor mWorkTaskExecutor;

    @NonNull
    private WorkerFactory mWorkerFactory;

    @RestrictTo
    public static class RuntimeExtras {

        @Nullable
        @RequiresApi
        public Network network;

        @NonNull
        public List<String> triggeredContentAuthorities = Collections.emptyList();

        @NonNull
        public List<Uri> triggeredContentUris = Collections.emptyList();
    }

    @NonNull
    @RestrictTo
    public Executor a() {
        return this.mBackgroundExecutor;
    }

    @NonNull
    @RestrictTo
    public ForegroundUpdater b() {
        return this.mForegroundUpdater;
    }

    @NonNull
    public UUID c() {
        return this.mId;
    }

    @NonNull
    public Data d() {
        return this.mInputData;
    }

    @NonNull
    @RestrictTo
    public ProgressUpdater f() {
        return this.mProgressUpdater;
    }

    @IntRange
    public int g() {
        return this.mRunAttemptCount;
    }

    @NonNull
    public Set<String> h() {
        return this.mTags;
    }

    @NonNull
    @RestrictTo
    public TaskExecutor i() {
        return this.mWorkTaskExecutor;
    }

    @NonNull
    @RestrictTo
    public WorkerFactory l() {
        return this.mWorkerFactory;
    }

    @Nullable
    @RequiresApi
    public Network e() {
        return this.mRuntimeExtras.network;
    }

    @NonNull
    @RequiresApi
    public List<String> j() {
        return this.mRuntimeExtras.triggeredContentAuthorities;
    }

    @NonNull
    @RequiresApi
    public List<Uri> k() {
        return this.mRuntimeExtras.triggeredContentUris;
    }

    @RestrictTo
    public WorkerParameters(@NonNull UUID id, @NonNull Data inputData, @NonNull Collection<String> tags, @NonNull RuntimeExtras runtimeExtras, @IntRange int runAttemptCount, @IntRange int generation, @NonNull Executor backgroundExecutor, @NonNull TaskExecutor workTaskExecutor, @NonNull WorkerFactory workerFactory, @NonNull ProgressUpdater progressUpdater, @NonNull ForegroundUpdater foregroundUpdater) {
        this.mId = id;
        this.mInputData = inputData;
        this.mTags = new HashSet(tags);
        this.mRuntimeExtras = runtimeExtras;
        this.mRunAttemptCount = runAttemptCount;
        this.mGeneration = generation;
        this.mBackgroundExecutor = backgroundExecutor;
        this.mWorkTaskExecutor = workTaskExecutor;
        this.mWorkerFactory = workerFactory;
        this.mProgressUpdater = progressUpdater;
        this.mForegroundUpdater = foregroundUpdater;
    }
}
