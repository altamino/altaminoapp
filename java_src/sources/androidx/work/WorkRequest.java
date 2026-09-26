package androidx.work;

import android.annotation.SuppressLint;
import android.os.Build;
import androidx.annotation.RestrictTo;
import androidx.work.impl.model.WorkSpec;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import kotlin.collections.y0;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
public abstract class WorkRequest {

    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final long DEFAULT_BACKOFF_DELAY_MILLIS = 30000;

    @SuppressLint({"MinMaxConstant"})
    public static final long MAX_BACKOFF_MILLIS = 18000000;

    @SuppressLint({"MinMaxConstant"})
    public static final long MIN_BACKOFF_MILLIS = 10000;

    @NotNull
    private final UUID id;

    @NotNull
    private final Set<String> tags;

    @NotNull
    private final WorkSpec workSpec;

    public static abstract class Builder<B extends Builder<B, ?>, W extends WorkRequest> {
        private boolean backoffCriteriaSet;

        @NotNull
        private UUID id;

        @NotNull
        private final Set<String> tags;

        @NotNull
        private WorkSpec workSpec;

        @NotNull
        private final Class<? extends ListenableWorker> workerClass;

        @NotNull
        public abstract W c();

        public final boolean d() {
            return this.backoffCriteriaSet;
        }

        @NotNull
        public final UUID e() {
            return this.id;
        }

        @NotNull
        public final Set<String> f() {
            return this.tags;
        }

        @NotNull
        public abstract B g();

        @NotNull
        public final WorkSpec h() {
            return this.workSpec;
        }

        @NotNull
        public final B i(@NotNull BackoffPolicy backoffPolicy, long j6, @NotNull TimeUnit timeUnit) {
            t.j(backoffPolicy, "backoffPolicy");
            t.j(timeUnit, "timeUnit");
            this.backoffCriteriaSet = true;
            WorkSpec workSpec = this.workSpec;
            workSpec.backoffPolicy = backoffPolicy;
            workSpec.k(timeUnit.toMillis(j6));
            return (B) g();
        }

        @NotNull
        public final B j(@NotNull Constraints constraints) {
            t.j(constraints, "constraints");
            this.workSpec.constraints = constraints;
            return (B) g();
        }

        @NotNull
        public final B k(@NotNull UUID id) {
            t.j(id, "id");
            this.id = id;
            String string = id.toString();
            t.i(string, "id.toString()");
            this.workSpec = new WorkSpec(string, this.workSpec);
            return (B) g();
        }

        @NotNull
        public final B l(@NotNull Data inputData) {
            t.j(inputData, "inputData");
            this.workSpec.input = inputData;
            return (B) g();
        }

        public Builder(@NotNull Class<? extends ListenableWorker> workerClass) {
            t.j(workerClass, "workerClass");
            this.workerClass = workerClass;
            UUID uuidRandomUUID = UUID.randomUUID();
            t.i(uuidRandomUUID, "randomUUID()");
            this.id = uuidRandomUUID;
            String string = this.id.toString();
            t.i(string, "id.toString()");
            String name = workerClass.getName();
            t.i(name, "workerClass.name");
            this.workSpec = new WorkSpec(string, name);
            String name2 = workerClass.getName();
            t.i(name2, "workerClass.name");
            this.tags = y0.g(name2);
        }

        @NotNull
        public final B a(@NotNull String tag) {
            t.j(tag, "tag");
            this.tags.add(tag);
            return (B) g();
        }

        @NotNull
        public final W b() {
            boolean z6;
            W w5 = (W) c();
            Constraints constraints = this.workSpec.constraints;
            if ((Build.VERSION.SDK_INT < 24 || !constraints.e()) && !constraints.f() && !constraints.g() && !constraints.h()) {
                z6 = false;
            } else {
                z6 = true;
            }
            WorkSpec workSpec = this.workSpec;
            if (workSpec.expedited) {
                if (!z6) {
                    if (workSpec.initialDelay > 0) {
                        throw new IllegalArgumentException("Expedited jobs cannot be delayed".toString());
                    }
                } else {
                    throw new IllegalArgumentException("Expedited jobs only support network and storage constraints".toString());
                }
            }
            UUID uuidRandomUUID = UUID.randomUUID();
            t.i(uuidRandomUUID, "randomUUID()");
            k(uuidRandomUUID);
            return w5;
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    @NotNull
    public UUID a() {
        return this.id;
    }

    @RestrictTo
    @NotNull
    public final Set<String> c() {
        return this.tags;
    }

    @RestrictTo
    @NotNull
    public final WorkSpec d() {
        return this.workSpec;
    }

    public WorkRequest(@NotNull UUID id, @NotNull WorkSpec workSpec, @NotNull Set<String> tags) {
        t.j(id, "id");
        t.j(workSpec, "workSpec");
        t.j(tags, "tags");
        this.id = id;
        this.workSpec = workSpec;
        this.tags = tags;
    }

    @RestrictTo
    @NotNull
    public final String b() {
        String string = a().toString();
        t.i(string, "id.toString()");
        return string;
    }
}
