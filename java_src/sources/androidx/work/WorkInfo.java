package androidx.work;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import kotlinx.serialization.json.internal.b;

/* JADX INFO: loaded from: classes7.dex */
public final class WorkInfo {
    private final int mGeneration;

    @NonNull
    private UUID mId;

    @NonNull
    private Data mOutputData;

    @NonNull
    private Data mProgress;
    private int mRunAttemptCount;

    @NonNull
    private State mState;

    @NonNull
    private Set<String> mTags;

    public enum State {
        ENQUEUED,
        RUNNING,
        SUCCEEDED,
        FAILED,
        BLOCKED,
        CANCELLED;

        public boolean b() {
            return this == SUCCEEDED || this == FAILED || this == CANCELLED;
        }
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || WorkInfo.class != o.getClass()) {
            return false;
        }
        WorkInfo workInfo = (WorkInfo) o;
        if (this.mRunAttemptCount == workInfo.mRunAttemptCount && this.mGeneration == workInfo.mGeneration && this.mId.equals(workInfo.mId) && this.mState == workInfo.mState && this.mOutputData.equals(workInfo.mOutputData) && this.mTags.equals(workInfo.mTags)) {
            return this.mProgress.equals(workInfo.mProgress);
        }
        return false;
    }

    public int hashCode() {
        return (((((((((((this.mId.hashCode() * 31) + this.mState.hashCode()) * 31) + this.mOutputData.hashCode()) * 31) + this.mTags.hashCode()) * 31) + this.mProgress.hashCode()) * 31) + this.mRunAttemptCount) * 31) + this.mGeneration;
    }

    public String toString() {
        return "WorkInfo{mId='" + this.mId + "', mState=" + this.mState + ", mOutputData=" + this.mOutputData + ", mTags=" + this.mTags + ", mProgress=" + this.mProgress + b.END_OBJ;
    }

    @RestrictTo
    public WorkInfo(@NonNull UUID id, @NonNull State state, @NonNull Data outputData, @NonNull List<String> tags, @NonNull Data progress, int runAttemptCount, int generation) {
        this.mId = id;
        this.mState = state;
        this.mOutputData = outputData;
        this.mTags = new HashSet(tags);
        this.mProgress = progress;
        this.mRunAttemptCount = runAttemptCount;
        this.mGeneration = generation;
    }
}
