package androidx.work;

import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class OneTimeWorkRequest extends WorkRequest {

    @NotNull
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final OneTimeWorkRequest a(@NotNull Class<? extends ListenableWorker> workerClass) {
            t.j(workerClass, "workerClass");
            return new Builder(workerClass).b();
        }
    }

    @NotNull
    public static final OneTimeWorkRequest e(@NotNull Class<? extends ListenableWorker> cls) {
        return Companion.a(cls);
    }

    public static final class Builder extends WorkRequest.Builder<Builder, OneTimeWorkRequest> {
        @Override // androidx.work.WorkRequest.Builder
        @NotNull
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public Builder g() {
            return this;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Builder(@NotNull Class<? extends ListenableWorker> workerClass) {
            super(workerClass);
            t.j(workerClass, "workerClass");
            h().inputMergerClassName = OverwritingInputMerger.class.getName();
        }

        @Override // androidx.work.WorkRequest.Builder
        @NotNull
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public OneTimeWorkRequest c() {
            if (d() && h().constraints.h()) {
                throw new IllegalArgumentException("Cannot set backoff criteria on an idle mode job".toString());
            }
            return new OneTimeWorkRequest(this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OneTimeWorkRequest(@NotNull Builder builder) {
        super(builder.e(), builder.h(), builder.f());
        t.j(builder, "builder");
    }
}
