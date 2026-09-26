package androidx.work.impl;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.work.ExistingWorkPolicy;
import androidx.work.Logger;
import androidx.work.Operation;
import androidx.work.WorkContinuation;
import androidx.work.WorkRequest;
import androidx.work.impl.utils.EnqueueRunnable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes10.dex */
@RestrictTo
public class WorkContinuationImpl extends WorkContinuation {
    private static final String TAG = Logger.i("WorkContinuationImpl");
    private final List<String> mAllIds;
    private boolean mEnqueued;
    private final ExistingWorkPolicy mExistingWorkPolicy;
    private final List<String> mIds;
    private final String mName;
    private Operation mOperation;
    private final List<WorkContinuationImpl> mParents;
    private final List<? extends WorkRequest> mWork;
    private final WorkManagerImpl mWorkManagerImpl;

    public WorkContinuationImpl(@NonNull WorkManagerImpl workManagerImpl, @NonNull List<? extends WorkRequest> work) {
        this(workManagerImpl, null, ExistingWorkPolicy.KEEP, work, null);
    }

    @NonNull
    public ExistingWorkPolicy b() {
        return this.mExistingWorkPolicy;
    }

    @NonNull
    public List<String> c() {
        return this.mIds;
    }

    @Nullable
    public String d() {
        return this.mName;
    }

    @Nullable
    public List<WorkContinuationImpl> e() {
        return this.mParents;
    }

    @NonNull
    public List<? extends WorkRequest> f() {
        return this.mWork;
    }

    @NonNull
    public WorkManagerImpl g() {
        return this.mWorkManagerImpl;
    }

    public boolean j() {
        return this.mEnqueued;
    }

    public void k() {
        this.mEnqueued = true;
    }

    public WorkContinuationImpl(@NonNull WorkManagerImpl workManagerImpl, @Nullable String name, @NonNull ExistingWorkPolicy existingWorkPolicy, @NonNull List<? extends WorkRequest> work) {
        this(workManagerImpl, name, existingWorkPolicy, work, null);
    }

    @NonNull
    @RestrictTo
    public static Set<String> l(@NonNull WorkContinuationImpl continuation) {
        HashSet hashSet = new HashSet();
        List<WorkContinuationImpl> listE = continuation.e();
        if (listE != null && !listE.isEmpty()) {
            Iterator<WorkContinuationImpl> it = listE.iterator();
            while (it.hasNext()) {
                hashSet.addAll(it.next().c());
            }
        }
        return hashSet;
    }

    @NonNull
    public Operation a() {
        if (this.mEnqueued) {
            Logger.e().k(TAG, "Already enqueued work ids (" + TextUtils.join(", ", this.mIds) + ")");
        } else {
            EnqueueRunnable enqueueRunnable = new EnqueueRunnable(this);
            this.mWorkManagerImpl.q().a(enqueueRunnable);
            this.mOperation = enqueueRunnable.d();
        }
        return this.mOperation;
    }

    @RestrictTo
    public boolean h() {
        return i(this, new HashSet());
    }

    public WorkContinuationImpl(@NonNull WorkManagerImpl workManagerImpl, @Nullable String name, @NonNull ExistingWorkPolicy existingWorkPolicy, @NonNull List<? extends WorkRequest> work, @Nullable List<WorkContinuationImpl> parents) {
        this.mWorkManagerImpl = workManagerImpl;
        this.mName = name;
        this.mExistingWorkPolicy = existingWorkPolicy;
        this.mWork = work;
        this.mParents = parents;
        this.mIds = new ArrayList(work.size());
        this.mAllIds = new ArrayList();
        if (parents != null) {
            Iterator<WorkContinuationImpl> it = parents.iterator();
            while (it.hasNext()) {
                this.mAllIds.addAll(it.next().mAllIds);
            }
        }
        for (int i10 = 0; i10 < work.size(); i10++) {
            String strB = work.get(i10).b();
            this.mIds.add(strB);
            this.mAllIds.add(strB);
        }
    }

    @RestrictTo
    private static boolean i(@NonNull WorkContinuationImpl continuation, @NonNull Set<String> visited) {
        visited.addAll(continuation.c());
        Set<String> setL = l(continuation);
        Iterator<String> it = visited.iterator();
        while (it.hasNext()) {
            if (setL.contains(it.next())) {
                return true;
            }
        }
        List<WorkContinuationImpl> listE = continuation.e();
        if (listE != null && !listE.isEmpty()) {
            Iterator<WorkContinuationImpl> it2 = listE.iterator();
            while (it2.hasNext()) {
                if (i(it2.next(), visited)) {
                    return true;
                }
            }
        }
        visited.removeAll(continuation.c());
        return false;
    }
}
