package androidx.work.impl.utils;

import androidx.annotation.RestrictTo;
import androidx.annotation.WorkerThread;
import androidx.work.WorkInfo;
import androidx.work.WorkQuery;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.futures.SettableFuture;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes11.dex */
@RestrictTo
public abstract class StatusRunnable<T> implements Runnable {
    private final SettableFuture<T> mFuture = SettableFuture.s();

    /* JADX INFO: renamed from: androidx.work.impl.utils.StatusRunnable$1, reason: invalid class name */
    /* JADX INFO: loaded from: classes4.dex */
    class AnonymousClass1 extends StatusRunnable<List<WorkInfo>> {
        final /* synthetic */ List val$ids;
        final /* synthetic */ WorkManagerImpl val$workManager;

        @Override // androidx.work.impl.utils.StatusRunnable
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public List<WorkInfo> a() {
            return WorkSpec.WORK_INFO_MAPPER.apply(this.val$workManager.p().M().B(this.val$ids));
        }
    }

    /* JADX INFO: renamed from: androidx.work.impl.utils.StatusRunnable$2, reason: invalid class name */
    /* JADX INFO: loaded from: classes4.dex */
    class AnonymousClass2 extends StatusRunnable<WorkInfo> {
        final /* synthetic */ UUID val$id;
        final /* synthetic */ WorkManagerImpl val$workManager;

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.work.impl.utils.StatusRunnable
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public WorkInfo a() {
            WorkSpec.WorkInfoPojo workInfoPojoR = this.val$workManager.p().M().r(this.val$id.toString());
            if (workInfoPojoR != null) {
                return workInfoPojoR.a();
            }
            return null;
        }
    }

    /* JADX INFO: renamed from: androidx.work.impl.utils.StatusRunnable$3, reason: invalid class name */
    /* JADX INFO: loaded from: classes4.dex */
    class AnonymousClass3 extends StatusRunnable<List<WorkInfo>> {
        final /* synthetic */ String val$tag;
        final /* synthetic */ WorkManagerImpl val$workManager;

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.work.impl.utils.StatusRunnable
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public List<WorkInfo> a() {
            return WorkSpec.WORK_INFO_MAPPER.apply(this.val$workManager.p().M().z(this.val$tag));
        }
    }

    /* JADX INFO: renamed from: androidx.work.impl.utils.StatusRunnable$4, reason: invalid class name */
    /* JADX INFO: loaded from: classes4.dex */
    class AnonymousClass4 extends StatusRunnable<List<WorkInfo>> {
        final /* synthetic */ String val$name;
        final /* synthetic */ WorkManagerImpl val$workManager;

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.work.impl.utils.StatusRunnable
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public List<WorkInfo> a() {
            return WorkSpec.WORK_INFO_MAPPER.apply(this.val$workManager.p().M().i(this.val$name));
        }
    }

    /* JADX INFO: renamed from: androidx.work.impl.utils.StatusRunnable$5, reason: invalid class name */
    /* JADX INFO: loaded from: classes4.dex */
    class AnonymousClass5 extends StatusRunnable<List<WorkInfo>> {
        final /* synthetic */ WorkQuery val$querySpec;
        final /* synthetic */ WorkManagerImpl val$workManager;

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.work.impl.utils.StatusRunnable
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public List<WorkInfo> a() {
            return WorkSpec.WORK_INFO_MAPPER.apply(this.val$workManager.p().I().a(RawQueries.b(this.val$querySpec)));
        }
    }

    @WorkerThread
    abstract T a();

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.mFuture.o(a());
        } catch (Throwable th) {
            this.mFuture.p(th);
        }
    }
}
