package androidx.privacysandbox.ads.adservices.measurement;

import android.net.Uri;
import androidx.annotation.RequiresApi;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.time.Instant;
import java.util.HashSet;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@RequiresApi
public final class DeletionRequest {

    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int DELETION_MODE_ALL = 0;
    public static final int DELETION_MODE_EXCLUDE_INTERNAL_DATA = 1;
    public static final int MATCH_BEHAVIOR_DELETE = 0;
    public static final int MATCH_BEHAVIOR_PRESERVE = 1;
    private final int deletionMode;

    @NotNull
    private final List<Uri> domainUris;

    @NotNull
    private final Instant end;
    private final int matchBehavior;

    @NotNull
    private final List<Uri> originUris;

    @NotNull
    private final Instant start;

    public static final class Companion {

        @Retention(RetentionPolicy.SOURCE)
        public @interface DeletionMode {
        }

        @Retention(RetentionPolicy.SOURCE)
        public @interface MatchBehavior {
        }

        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DeletionRequest(int i10, int i11, @NotNull Instant start, @NotNull Instant end, @NotNull List<? extends Uri> domainUris, @NotNull List<? extends Uri> originUris) {
        kotlin.jvm.internal.t.j(start, "start");
        kotlin.jvm.internal.t.j(end, "end");
        kotlin.jvm.internal.t.j(domainUris, "domainUris");
        kotlin.jvm.internal.t.j(originUris, "originUris");
        this.deletionMode = i10;
        this.matchBehavior = i11;
        this.start = start;
        this.end = end;
        this.domainUris = domainUris;
        this.originUris = originUris;
    }

    public final int a() {
        return this.deletionMode;
    }

    @NotNull
    public final List<Uri> b() {
        return this.domainUris;
    }

    @NotNull
    public final Instant c() {
        return this.end;
    }

    public final int d() {
        return this.matchBehavior;
    }

    @NotNull
    public final List<Uri> e() {
        return this.originUris;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DeletionRequest)) {
            return false;
        }
        DeletionRequest deletionRequest = (DeletionRequest) obj;
        return this.deletionMode == deletionRequest.deletionMode && kotlin.jvm.internal.t.e(new HashSet(this.domainUris), new HashSet(deletionRequest.domainUris)) && kotlin.jvm.internal.t.e(new HashSet(this.originUris), new HashSet(deletionRequest.originUris)) && kotlin.jvm.internal.t.e(this.start, deletionRequest.start) && kotlin.jvm.internal.t.e(this.end, deletionRequest.end) && this.matchBehavior == deletionRequest.matchBehavior;
    }

    @NotNull
    public final Instant f() {
        return this.start;
    }

    @RequiresApi
    public static final class Builder {
        private final int deletionMode;

        @NotNull
        private List<? extends Uri> domainUris;

        @NotNull
        private Instant end;
        private final int matchBehavior;

        @NotNull
        private List<? extends Uri> originUris;

        @NotNull
        private Instant start;

        public Builder(int i10, int i11) {
            this.deletionMode = i10;
            this.matchBehavior = i11;
            Instant MIN = Instant.MIN;
            kotlin.jvm.internal.t.i(MIN, "MIN");
            this.start = MIN;
            Instant MAX = Instant.MAX;
            kotlin.jvm.internal.t.i(MAX, "MAX");
            this.end = MAX;
            this.domainUris = kotlin.collections.v.m();
            this.originUris = kotlin.collections.v.m();
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ DeletionRequest(int i10, int i11, Instant MIN, Instant MAX, List list, List list2, int i12, kotlin.jvm.internal.k kVar) {
        if ((i12 & 4) != 0) {
            MIN = Instant.MIN;
            kotlin.jvm.internal.t.i(MIN, "MIN");
        }
        Instant instant = MIN;
        if ((i12 & 8) != 0) {
            MAX = Instant.MAX;
            kotlin.jvm.internal.t.i(MAX, "MAX");
        }
        this(i10, i11, instant, MAX, (i12 & 16) != 0 ? kotlin.collections.v.m() : list, (i12 & 32) != 0 ? kotlin.collections.v.m() : list2);
    }

    public int hashCode() {
        return (((((((((this.deletionMode * 31) + this.domainUris.hashCode()) * 31) + this.originUris.hashCode()) * 31) + this.start.hashCode()) * 31) + this.end.hashCode()) * 31) + this.matchBehavior;
    }

    @NotNull
    public String toString() {
        return "DeletionRequest { DeletionMode=" + (this.deletionMode == 0 ? "DELETION_MODE_ALL" : "DELETION_MODE_EXCLUDE_INTERNAL_DATA") + ", MatchBehavior=" + (this.matchBehavior == 0 ? "MATCH_BEHAVIOR_DELETE" : "MATCH_BEHAVIOR_PRESERVE") + ", Start=" + this.start + ", End=" + this.end + ", DomainUris=" + this.domainUris + ", OriginUris=" + this.originUris + " }";
    }
}
