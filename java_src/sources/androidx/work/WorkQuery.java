package androidx.work;

import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes6.dex */
public final class WorkQuery {
    private final List<UUID> mIds;
    private final List<WorkInfo.State> mStates;
    private final List<String> mTags;
    private final List<String> mUniqueWorkNames;

    @NonNull
    public List<UUID> a() {
        return this.mIds;
    }

    @NonNull
    public List<WorkInfo.State> b() {
        return this.mStates;
    }

    @NonNull
    public List<String> c() {
        return this.mTags;
    }

    @NonNull
    public List<String> d() {
        return this.mUniqueWorkNames;
    }

    public static final class Builder {
        List<UUID> mIds = new ArrayList();
        List<String> mUniqueWorkNames = new ArrayList();
        List<String> mTags = new ArrayList();
        List<WorkInfo.State> mStates = new ArrayList();

        private Builder() {
        }
    }
}
