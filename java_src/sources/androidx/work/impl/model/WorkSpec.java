package androidx.work.impl.model;

import androidx.annotation.IntRange;
import androidx.annotation.RestrictTo;
import androidx.arch.core.util.Function;
import androidx.room.ColumnInfo;
import androidx.room.Embedded;
import androidx.room.Entity;
import androidx.room.PrimaryKey;
import androidx.room.Relation;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.Logger;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.WorkInfo;
import androidx.work.WorkRequest;
import j8.o;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import kotlin.collections.w;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlinx.serialization.json.internal.b;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
@Entity
@RestrictTo
public final class WorkSpec {

    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final long SCHEDULE_NOT_REQUESTED_YET = -1;

    @NotNull
    private static final String TAG;

    @NotNull
    public static final Function<List<WorkInfoPojo>, List<WorkInfo>> WORK_INFO_MAPPER;

    @ColumnInfo
    public long backoffDelayDuration;

    @ColumnInfo
    @NotNull
    public BackoffPolicy backoffPolicy;

    @Embedded
    @NotNull
    public Constraints constraints;

    @ColumnInfo
    public boolean expedited;

    @ColumnInfo
    public long flexDuration;

    @ColumnInfo
    private final int generation;

    @PrimaryKey
    @ColumnInfo
    @NotNull
    public final String id;

    @ColumnInfo
    public long initialDelay;

    @ColumnInfo
    @NotNull
    public Data input;

    @ColumnInfo
    @Nullable
    public String inputMergerClassName;

    @ColumnInfo
    public long intervalDuration;

    @ColumnInfo
    public long lastEnqueueTime;

    @ColumnInfo
    public long minimumRetentionDuration;

    @ColumnInfo
    @NotNull
    public OutOfQuotaPolicy outOfQuotaPolicy;

    @ColumnInfo
    @NotNull
    public Data output;

    @ColumnInfo
    private int periodCount;

    @ColumnInfo
    public int runAttemptCount;

    @ColumnInfo
    public long scheduleRequestedAt;

    @ColumnInfo
    @NotNull
    public WorkInfo.State state;

    @ColumnInfo
    @NotNull
    public String workerClassName;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public static final class IdAndState {

        @ColumnInfo
        @NotNull
        public String id;

        @ColumnInfo
        @NotNull
        public WorkInfo.State state;

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof IdAndState)) {
                return false;
            }
            IdAndState idAndState = (IdAndState) obj;
            return t.e(this.id, idAndState.id) && this.state == idAndState.state;
        }

        public int hashCode() {
            return (this.id.hashCode() * 31) + this.state.hashCode();
        }

        @NotNull
        public String toString() {
            return "IdAndState(id=" + this.id + ", state=" + this.state + ')';
        }

        public IdAndState(@NotNull String id, @NotNull WorkInfo.State state) {
            t.j(id, "id");
            t.j(state, "state");
            this.id = id;
            this.state = state;
        }
    }

    public static final class WorkInfoPojo {

        @ColumnInfo
        private final int generation;

        @ColumnInfo
        @NotNull
        private String id;

        @ColumnInfo
        @NotNull
        private Data output;

        @Relation
        @NotNull
        private List<Data> progress;

        @ColumnInfo
        private int runAttemptCount;

        @ColumnInfo
        @NotNull
        private WorkInfo.State state;

        @Relation
        @NotNull
        private List<String> tags;

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof WorkInfoPojo)) {
                return false;
            }
            WorkInfoPojo workInfoPojo = (WorkInfoPojo) obj;
            return t.e(this.id, workInfoPojo.id) && this.state == workInfoPojo.state && t.e(this.output, workInfoPojo.output) && this.runAttemptCount == workInfoPojo.runAttemptCount && this.generation == workInfoPojo.generation && t.e(this.tags, workInfoPojo.tags) && t.e(this.progress, workInfoPojo.progress);
        }

        public int hashCode() {
            return (((((((((((this.id.hashCode() * 31) + this.state.hashCode()) * 31) + this.output.hashCode()) * 31) + this.runAttemptCount) * 31) + this.generation) * 31) + this.tags.hashCode()) * 31) + this.progress.hashCode();
        }

        @NotNull
        public String toString() {
            return "WorkInfoPojo(id=" + this.id + ", state=" + this.state + ", output=" + this.output + ", runAttemptCount=" + this.runAttemptCount + ", generation=" + this.generation + ", tags=" + this.tags + ", progress=" + this.progress + ')';
        }

        public WorkInfoPojo(@NotNull String id, @NotNull WorkInfo.State state, @NotNull Data output, int i10, int i11, @NotNull List<String> tags, @NotNull List<Data> progress) {
            t.j(id, "id");
            t.j(state, "state");
            t.j(output, "output");
            t.j(tags, "tags");
            t.j(progress, "progress");
            this.id = id;
            this.state = state;
            this.output = output;
            this.runAttemptCount = i10;
            this.generation = i11;
            this.tags = tags;
            this.progress = progress;
        }

        @NotNull
        public final WorkInfo a() {
            return new WorkInfo(UUID.fromString(this.id), this.state, this.output, this.tags, this.progress.isEmpty() ^ true ? this.progress.get(0) : Data.EMPTY, this.runAttemptCount, this.generation);
        }
    }

    public WorkSpec(@NotNull String id, @NotNull WorkInfo.State state, @NotNull String workerClassName, @Nullable String str, @NotNull Data input, @NotNull Data output, long j6, long j10, long j11, @NotNull Constraints constraints, @IntRange int i10, @NotNull BackoffPolicy backoffPolicy, long j12, long j13, long j14, long j15, boolean z6, @NotNull OutOfQuotaPolicy outOfQuotaPolicy, int i11, int i12) {
        t.j(id, "id");
        t.j(state, "state");
        t.j(workerClassName, "workerClassName");
        t.j(input, "input");
        t.j(output, "output");
        t.j(constraints, "constraints");
        t.j(backoffPolicy, "backoffPolicy");
        t.j(outOfQuotaPolicy, "outOfQuotaPolicy");
        this.id = id;
        this.state = state;
        this.workerClassName = workerClassName;
        this.inputMergerClassName = str;
        this.input = input;
        this.output = output;
        this.initialDelay = j6;
        this.intervalDuration = j10;
        this.flexDuration = j11;
        this.constraints = constraints;
        this.runAttemptCount = i10;
        this.backoffPolicy = backoffPolicy;
        this.backoffDelayDuration = j12;
        this.lastEnqueueTime = j13;
        this.minimumRetentionDuration = j14;
        this.scheduleRequestedAt = j15;
        this.expedited = z6;
        this.outOfQuotaPolicy = outOfQuotaPolicy;
        this.periodCount = i11;
        this.generation = i12;
    }

    @NotNull
    public final WorkSpec d(@NotNull String id, @NotNull WorkInfo.State state, @NotNull String workerClassName, @Nullable String str, @NotNull Data input, @NotNull Data output, long j6, long j10, long j11, @NotNull Constraints constraints, @IntRange int i10, @NotNull BackoffPolicy backoffPolicy, long j12, long j13, long j14, long j15, boolean z6, @NotNull OutOfQuotaPolicy outOfQuotaPolicy, int i11, int i12) {
        t.j(id, "id");
        t.j(state, "state");
        t.j(workerClassName, "workerClassName");
        t.j(input, "input");
        t.j(output, "output");
        t.j(constraints, "constraints");
        t.j(backoffPolicy, "backoffPolicy");
        t.j(outOfQuotaPolicy, "outOfQuotaPolicy");
        return new WorkSpec(id, state, workerClassName, str, input, output, j6, j10, j11, constraints, i10, backoffPolicy, j12, j13, j14, j15, z6, outOfQuotaPolicy, i11, i12);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WorkSpec)) {
            return false;
        }
        WorkSpec workSpec = (WorkSpec) obj;
        return t.e(this.id, workSpec.id) && this.state == workSpec.state && t.e(this.workerClassName, workSpec.workerClassName) && t.e(this.inputMergerClassName, workSpec.inputMergerClassName) && t.e(this.input, workSpec.input) && t.e(this.output, workSpec.output) && this.initialDelay == workSpec.initialDelay && this.intervalDuration == workSpec.intervalDuration && this.flexDuration == workSpec.flexDuration && t.e(this.constraints, workSpec.constraints) && this.runAttemptCount == workSpec.runAttemptCount && this.backoffPolicy == workSpec.backoffPolicy && this.backoffDelayDuration == workSpec.backoffDelayDuration && this.lastEnqueueTime == workSpec.lastEnqueueTime && this.minimumRetentionDuration == workSpec.minimumRetentionDuration && this.scheduleRequestedAt == workSpec.scheduleRequestedAt && this.expedited == workSpec.expedited && this.outOfQuotaPolicy == workSpec.outOfQuotaPolicy && this.periodCount == workSpec.periodCount && this.generation == workSpec.generation;
    }

    public final int f() {
        return this.generation;
    }

    public final int g() {
        return this.periodCount;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v33, types: [int] */
    /* JADX WARN: Type inference failed for: r1v31, types: [int] */
    /* JADX WARN: Type inference failed for: r1v36 */
    /* JADX WARN: Type inference failed for: r1v38 */
    public int hashCode() {
        int iHashCode = ((((this.id.hashCode() * 31) + this.state.hashCode()) * 31) + this.workerClassName.hashCode()) * 31;
        String str = this.inputMergerClassName;
        int iHashCode2 = (((((((((((((((((((((((((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + this.input.hashCode()) * 31) + this.output.hashCode()) * 31) + i.a.a(this.initialDelay)) * 31) + i.a.a(this.intervalDuration)) * 31) + i.a.a(this.flexDuration)) * 31) + this.constraints.hashCode()) * 31) + this.runAttemptCount) * 31) + this.backoffPolicy.hashCode()) * 31) + i.a.a(this.backoffDelayDuration)) * 31) + i.a.a(this.lastEnqueueTime)) * 31) + i.a.a(this.minimumRetentionDuration)) * 31) + i.a.a(this.scheduleRequestedAt)) * 31;
        boolean z6 = this.expedited;
        ?? r1 = z6;
        if (z6) {
            r1 = 1;
        }
        return ((((((iHashCode2 + r1) * 31) + this.outOfQuotaPolicy.hashCode()) * 31) + this.periodCount) * 31) + this.generation;
    }

    public final boolean j() {
        return this.intervalDuration != 0;
    }

    static {
        String strI = Logger.i("WorkSpec");
        t.i(strI, "tagWithPrefix(\"WorkSpec\")");
        TAG = strI;
        WORK_INFO_MAPPER = new Function() { // from class: androidx.work.impl.model.a
            @Override // androidx.arch.core.util.Function
            public final Object apply(Object obj) {
                return WorkSpec.b((List) obj);
            }
        };
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ WorkSpec(String str, WorkInfo.State state, String str2, String str3, Data data, Data data2, long j6, long j10, long j11, Constraints constraints, int i10, BackoffPolicy backoffPolicy, long j12, long j13, long j14, long j15, boolean z6, OutOfQuotaPolicy outOfQuotaPolicy, int i11, int i12, int i13, k kVar) {
        Data data3;
        Data data4;
        WorkInfo.State state2 = (i13 & 2) != 0 ? WorkInfo.State.ENQUEUED : state;
        String str4 = (i13 & 8) != 0 ? null : str3;
        if ((i13 & 16) != 0) {
            Data EMPTY = Data.EMPTY;
            t.i(EMPTY, "EMPTY");
            data3 = EMPTY;
        } else {
            data3 = data;
        }
        if ((i13 & 32) != 0) {
            Data EMPTY2 = Data.EMPTY;
            t.i(EMPTY2, "EMPTY");
            data4 = EMPTY2;
        } else {
            data4 = data2;
        }
        this(str, state2, str2, str4, data3, data4, (i13 & 64) != 0 ? 0L : j6, (i13 & 128) != 0 ? 0L : j10, (i13 & 256) != 0 ? 0L : j11, (i13 & 512) != 0 ? Constraints.NONE : constraints, (i13 & 1024) != 0 ? 0 : i10, (i13 & 2048) != 0 ? BackoffPolicy.EXPONENTIAL : backoffPolicy, (i13 & 4096) != 0 ? 30000L : j12, (i13 & 8192) != 0 ? 0L : j13, (i13 & 16384) != 0 ? 0L : j14, (32768 & i13) != 0 ? -1L : j15, (65536 & i13) != 0 ? false : z6, (131072 & i13) != 0 ? OutOfQuotaPolicy.RUN_AS_NON_EXPEDITED_WORK_REQUEST : outOfQuotaPolicy, (262144 & i13) != 0 ? 0 : i11, (i13 & 524288) != 0 ? 0 : i12);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List b(List list) {
        if (list == null) {
            return null;
        }
        List list2 = list;
        ArrayList arrayList = new ArrayList(w.x(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(((WorkInfoPojo) it.next()).a());
        }
        return arrayList;
    }

    public final boolean h() {
        return !t.e(Constraints.NONE, this.constraints);
    }

    public final boolean i() {
        return this.state == WorkInfo.State.ENQUEUED && this.runAttemptCount > 0;
    }

    @NotNull
    public String toString() {
        return "{WorkSpec: " + this.id + b.END_OBJ;
    }

    public final long c() {
        long jScalb;
        if (i()) {
            if (this.backoffPolicy == BackoffPolicy.LINEAR) {
                jScalb = this.backoffDelayDuration * ((long) this.runAttemptCount);
            } else {
                jScalb = (long) Math.scalb(this.backoffDelayDuration, this.runAttemptCount - 1);
            }
            return this.lastEnqueueTime + o.k(jScalb, WorkRequest.MAX_BACKOFF_MILLIS);
        }
        long j6 = 0;
        if (j()) {
            int i10 = this.periodCount;
            long j10 = this.lastEnqueueTime;
            if (i10 == 0) {
                j10 += this.initialDelay;
            }
            long j11 = this.flexDuration;
            long j12 = this.intervalDuration;
            if (j11 != j12) {
                if (i10 == 0) {
                    j6 = ((long) (-1)) * j11;
                }
                j10 += j12;
            } else if (i10 != 0) {
                j6 = j12;
            }
            return j10 + j6;
        }
        long jCurrentTimeMillis = this.lastEnqueueTime;
        if (jCurrentTimeMillis == 0) {
            jCurrentTimeMillis = System.currentTimeMillis();
        }
        return jCurrentTimeMillis + this.initialDelay;
    }

    public final void k(long j6) {
        if (j6 > WorkRequest.MAX_BACKOFF_MILLIS) {
            Logger.e().k(TAG, "Backoff delay duration exceeds maximum value");
        }
        if (j6 < WorkRequest.MIN_BACKOFF_MILLIS) {
            Logger.e().k(TAG, "Backoff delay duration less than minimum value");
        }
        this.backoffDelayDuration = o.p(j6, WorkRequest.MIN_BACKOFF_MILLIS, WorkRequest.MAX_BACKOFF_MILLIS);
    }

    public final void l(long j6) {
        if (j6 < 900000) {
            Logger.e().k(TAG, "Interval duration lesser than minimum allowed value; Changed to 900000");
        }
        m(o.f(j6, 900000L), o.f(j6, 900000L));
    }

    public final void m(long j6, long j10) {
        if (j6 < 900000) {
            Logger.e().k(TAG, "Interval duration lesser than minimum allowed value; Changed to 900000");
        }
        this.intervalDuration = o.f(j6, 900000L);
        if (j10 < 300000) {
            Logger.e().k(TAG, "Flex duration lesser than minimum allowed value; Changed to 300000");
        }
        if (j10 > this.intervalDuration) {
            Logger.e().k(TAG, "Flex duration greater than interval duration; Changed to " + j6);
        }
        this.flexDuration = o.p(j10, 300000L, this.intervalDuration);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public WorkSpec(@NotNull String id, @NotNull String workerClassName_) {
        this(id, null, workerClassName_, null, null, null, 0L, 0L, 0L, null, 0, null, 0L, 0L, 0L, 0L, false, null, 0, 0, 1048570, null);
        t.j(id, "id");
        t.j(workerClassName_, "workerClassName_");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public WorkSpec(@NotNull String newId, @NotNull WorkSpec other) {
        this(newId, other.state, other.workerClassName, other.inputMergerClassName, new Data(other.input), new Data(other.output), other.initialDelay, other.intervalDuration, other.flexDuration, new Constraints(other.constraints), other.runAttemptCount, other.backoffPolicy, other.backoffDelayDuration, other.lastEnqueueTime, other.minimumRetentionDuration, other.scheduleRequestedAt, other.expedited, other.outOfQuotaPolicy, other.periodCount, 0, 524288, null);
        t.j(newId, "newId");
        t.j(other, "other");
    }
}
