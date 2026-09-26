package androidx.work;

import android.net.Uri;
import android.os.Build;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.compose.foundation.c;
import androidx.room.ColumnInfo;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.collections.d0;
import kotlin.collections.y0;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class Constraints {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    public static final Constraints NONE = new Constraints(null, false, false, false, false, 0, 0, null, 255, null);

    @ColumnInfo
    private final long contentTriggerMaxDelayMillis;

    @ColumnInfo
    private final long contentTriggerUpdateDelayMillis;

    @ColumnInfo
    @NotNull
    private final Set<ContentUriTrigger> contentUriTriggers;

    @ColumnInfo
    @NotNull
    private final NetworkType requiredNetworkType;

    @ColumnInfo
    private final boolean requiresBatteryNotLow;

    @ColumnInfo
    private final boolean requiresCharging;

    @ColumnInfo
    private final boolean requiresDeviceIdle;

    @ColumnInfo
    private final boolean requiresStorageNotLow;

    public static final class Builder {

        @NotNull
        private Set<ContentUriTrigger> contentUriTriggers;

        @NotNull
        private NetworkType requiredNetworkType;
        private boolean requiresBatteryNotLow;
        private boolean requiresCharging;
        private boolean requiresDeviceIdle;
        private boolean requiresStorageNotLow;
        private long triggerContentMaxDelay;
        private long triggerContentUpdateDelay;

        public Builder() {
            this.requiredNetworkType = NetworkType.NOT_REQUIRED;
            this.triggerContentUpdateDelay = -1L;
            this.triggerContentMaxDelay = -1L;
            this.contentUriTriggers = new LinkedHashSet();
        }

        @NotNull
        public final Builder b(@NotNull NetworkType networkType) {
            t.j(networkType, "networkType");
            this.requiredNetworkType = networkType;
            return this;
        }

        @NotNull
        public final Constraints a() {
            Set setE;
            long j6;
            long j10;
            if (Build.VERSION.SDK_INT >= 24) {
                setE = d0.Y0(this.contentUriTriggers);
                j6 = this.triggerContentUpdateDelay;
                j10 = this.triggerContentMaxDelay;
            } else {
                setE = y0.e();
                j6 = -1;
                j10 = -1;
            }
            return new Constraints(this.requiredNetworkType, this.requiresCharging, this.requiresDeviceIdle, this.requiresBatteryNotLow, this.requiresStorageNotLow, j6, j10, setE);
        }

        @RestrictTo
        public Builder(@NotNull Constraints constraints) {
            t.j(constraints, "constraints");
            this.requiredNetworkType = NetworkType.NOT_REQUIRED;
            this.triggerContentUpdateDelay = -1L;
            this.triggerContentMaxDelay = -1L;
            this.contentUriTriggers = new LinkedHashSet();
            this.requiresCharging = constraints.g();
            int i10 = Build.VERSION.SDK_INT;
            this.requiresDeviceIdle = constraints.h();
            this.requiredNetworkType = constraints.d();
            this.requiresBatteryNotLow = constraints.f();
            this.requiresStorageNotLow = constraints.i();
            if (i10 >= 24) {
                this.triggerContentUpdateDelay = constraints.b();
                this.triggerContentMaxDelay = constraints.a();
                this.contentUriTriggers = d0.X0(constraints.c());
            }
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public static final class ContentUriTrigger {
        private final boolean isTriggeredForDescendants;

        @NotNull
        private final Uri uri;

        @NotNull
        public final Uri a() {
            return this.uri;
        }

        public final boolean b() {
            return this.isTriggeredForDescendants;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!t.e(ContentUriTrigger.class, obj != null ? obj.getClass() : null)) {
                return false;
            }
            t.h(obj, "null cannot be cast to non-null type androidx.work.Constraints.ContentUriTrigger");
            ContentUriTrigger contentUriTrigger = (ContentUriTrigger) obj;
            return t.e(this.uri, contentUriTrigger.uri) && this.isTriggeredForDescendants == contentUriTrigger.isTriggeredForDescendants;
        }

        public int hashCode() {
            return (this.uri.hashCode() * 31) + c.a(this.isTriggeredForDescendants);
        }

        public ContentUriTrigger(@NotNull Uri uri, boolean z6) {
            t.j(uri, "uri");
            this.uri = uri;
            this.isTriggeredForDescendants = z6;
        }
    }

    public Constraints() {
        this(null, false, false, false, false, 0L, 0L, null, 255, null);
    }

    public final long a() {
        return this.contentTriggerMaxDelayMillis;
    }

    public final long b() {
        return this.contentTriggerUpdateDelayMillis;
    }

    @NotNull
    public final Set<ContentUriTrigger> c() {
        return this.contentUriTriggers;
    }

    @NotNull
    public final NetworkType d() {
        return this.requiredNetworkType;
    }

    public final boolean f() {
        return this.requiresBatteryNotLow;
    }

    public final boolean g() {
        return this.requiresCharging;
    }

    @RequiresApi
    public final boolean h() {
        return this.requiresDeviceIdle;
    }

    public final boolean i() {
        return this.requiresStorageNotLow;
    }

    public Constraints(@NotNull NetworkType requiredNetworkType, boolean z6, boolean z10, boolean z11, boolean z12, long j6, long j10, @NotNull Set<ContentUriTrigger> contentUriTriggers) {
        t.j(requiredNetworkType, "requiredNetworkType");
        t.j(contentUriTriggers, "contentUriTriggers");
        this.requiredNetworkType = requiredNetworkType;
        this.requiresCharging = z6;
        this.requiresDeviceIdle = z10;
        this.requiresBatteryNotLow = z11;
        this.requiresStorageNotLow = z12;
        this.contentTriggerUpdateDelayMillis = j6;
        this.contentTriggerMaxDelayMillis = j10;
        this.contentUriTriggers = contentUriTriggers;
    }

    @RestrictTo
    public final boolean e() {
        return !this.contentUriTriggers.isEmpty();
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !t.e(Constraints.class, obj.getClass())) {
            return false;
        }
        Constraints constraints = (Constraints) obj;
        if (this.requiresCharging == constraints.requiresCharging && this.requiresDeviceIdle == constraints.requiresDeviceIdle && this.requiresBatteryNotLow == constraints.requiresBatteryNotLow && this.requiresStorageNotLow == constraints.requiresStorageNotLow && this.contentTriggerUpdateDelayMillis == constraints.contentTriggerUpdateDelayMillis && this.contentTriggerMaxDelayMillis == constraints.contentTriggerMaxDelayMillis && this.requiredNetworkType == constraints.requiredNetworkType) {
            return t.e(this.contentUriTriggers, constraints.contentUriTriggers);
        }
        return false;
    }

    public int hashCode() {
        int iHashCode = ((((((((this.requiredNetworkType.hashCode() * 31) + (this.requiresCharging ? 1 : 0)) * 31) + (this.requiresDeviceIdle ? 1 : 0)) * 31) + (this.requiresBatteryNotLow ? 1 : 0)) * 31) + (this.requiresStorageNotLow ? 1 : 0)) * 31;
        long j6 = this.contentTriggerUpdateDelayMillis;
        int i10 = (iHashCode + ((int) (j6 ^ (j6 >>> 32)))) * 31;
        long j10 = this.contentTriggerMaxDelayMillis;
        return ((i10 + ((int) (j10 ^ (j10 >>> 32)))) * 31) + this.contentUriTriggers.hashCode();
    }

    public /* synthetic */ Constraints(NetworkType networkType, boolean z6, boolean z10, boolean z11, boolean z12, long j6, long j10, Set set, int i10, k kVar) {
        this((i10 & 1) != 0 ? NetworkType.NOT_REQUIRED : networkType, (i10 & 2) != 0 ? false : z6, (i10 & 4) != 0 ? false : z10, (i10 & 8) != 0 ? false : z11, (i10 & 16) == 0 ? z12 : false, (i10 & 32) != 0 ? -1L : j6, (i10 & 64) == 0 ? j10 : -1L, (i10 & 128) != 0 ? y0.e() : set);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Constraints(@NotNull Constraints other) {
        t.j(other, "other");
        boolean z6 = other.requiresCharging;
        boolean z10 = other.requiresDeviceIdle;
        this(other.requiredNetworkType, z6, z10, other.requiresBatteryNotLow, other.requiresStorageNotLow, other.contentTriggerUpdateDelayMillis, other.contentTriggerMaxDelayMillis, other.contentUriTriggers);
    }
}
