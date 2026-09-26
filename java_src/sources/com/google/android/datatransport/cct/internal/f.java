package com.google.android.datatransport.cct.internal;

import androidx.annotation.Nullable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes9.dex */
final class f extends l {
    private final Integer eventCode;
    private final long eventTimeMs;
    private final long eventUptimeMs;
    private final o networkConnectionInfo;
    private final byte[] sourceExtension;
    private final String sourceExtensionJsonProto3;
    private final long timezoneOffsetSeconds;

    static final class b extends l.a {
        private Integer eventCode;
        private Long eventTimeMs;
        private Long eventUptimeMs;
        private o networkConnectionInfo;
        private byte[] sourceExtension;
        private String sourceExtensionJsonProto3;
        private Long timezoneOffsetSeconds;

        @Override // com.google.android.datatransport.cct.internal.l.a
        public l.a b(@Nullable Integer num) {
            this.eventCode = num;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.l.a
        public l.a e(@Nullable o oVar) {
            this.networkConnectionInfo = oVar;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.l.a
        l.a f(@Nullable byte[] bArr) {
            this.sourceExtension = bArr;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.l.a
        l.a g(@Nullable String str) {
            this.sourceExtensionJsonProto3 = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.l.a
        public l a() {
            String str = "";
            if (this.eventTimeMs == null) {
                str = " eventTimeMs";
            }
            if (this.eventUptimeMs == null) {
                str = str + " eventUptimeMs";
            }
            if (this.timezoneOffsetSeconds == null) {
                str = str + " timezoneOffsetSeconds";
            }
            if (str.isEmpty()) {
                return new f(this.eventTimeMs.longValue(), this.eventCode, this.eventUptimeMs.longValue(), this.sourceExtension, this.sourceExtensionJsonProto3, this.timezoneOffsetSeconds.longValue(), this.networkConnectionInfo);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        b() {
        }

        @Override // com.google.android.datatransport.cct.internal.l.a
        public l.a c(long j6) {
            this.eventTimeMs = Long.valueOf(j6);
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.l.a
        public l.a d(long j6) {
            this.eventUptimeMs = Long.valueOf(j6);
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.l.a
        public l.a h(long j6) {
            this.timezoneOffsetSeconds = Long.valueOf(j6);
            return this;
        }
    }

    @Override // com.google.android.datatransport.cct.internal.l
    @Nullable
    public Integer b() {
        return this.eventCode;
    }

    @Override // com.google.android.datatransport.cct.internal.l
    public long c() {
        return this.eventTimeMs;
    }

    @Override // com.google.android.datatransport.cct.internal.l
    public long d() {
        return this.eventUptimeMs;
    }

    @Override // com.google.android.datatransport.cct.internal.l
    @Nullable
    public o e() {
        return this.networkConnectionInfo;
    }

    public boolean equals(Object obj) {
        Integer num;
        String str;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        if (this.eventTimeMs == lVar.c() && ((num = this.eventCode) != null ? num.equals(lVar.b()) : lVar.b() == null) && this.eventUptimeMs == lVar.d()) {
            if (Arrays.equals(this.sourceExtension, lVar instanceof f ? ((f) lVar).sourceExtension : lVar.f()) && ((str = this.sourceExtensionJsonProto3) != null ? str.equals(lVar.g()) : lVar.g() == null) && this.timezoneOffsetSeconds == lVar.h()) {
                o oVar = this.networkConnectionInfo;
                if (oVar == null) {
                    if (lVar.e() == null) {
                        return true;
                    }
                } else if (oVar.equals(lVar.e())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.google.android.datatransport.cct.internal.l
    @Nullable
    public byte[] f() {
        return this.sourceExtension;
    }

    @Override // com.google.android.datatransport.cct.internal.l
    @Nullable
    public String g() {
        return this.sourceExtensionJsonProto3;
    }

    @Override // com.google.android.datatransport.cct.internal.l
    public long h() {
        return this.timezoneOffsetSeconds;
    }

    private f(long j6, @Nullable Integer num, long j10, @Nullable byte[] bArr, @Nullable String str, long j11, @Nullable o oVar) {
        this.eventTimeMs = j6;
        this.eventCode = num;
        this.eventUptimeMs = j10;
        this.sourceExtension = bArr;
        this.sourceExtensionJsonProto3 = str;
        this.timezoneOffsetSeconds = j11;
        this.networkConnectionInfo = oVar;
    }

    public int hashCode() {
        long j6 = this.eventTimeMs;
        int i10 = (((int) (j6 ^ (j6 >>> 32))) ^ 1000003) * 1000003;
        Integer num = this.eventCode;
        int iHashCode = num == null ? 0 : num.hashCode();
        long j10 = this.eventUptimeMs;
        int iHashCode2 = (((((i10 ^ iHashCode) * 1000003) ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003) ^ Arrays.hashCode(this.sourceExtension)) * 1000003;
        String str = this.sourceExtensionJsonProto3;
        int iHashCode3 = str == null ? 0 : str.hashCode();
        long j11 = this.timezoneOffsetSeconds;
        int i11 = (((iHashCode2 ^ iHashCode3) * 1000003) ^ ((int) ((j11 >>> 32) ^ j11))) * 1000003;
        o oVar = this.networkConnectionInfo;
        return i11 ^ (oVar != null ? oVar.hashCode() : 0);
    }

    public String toString() {
        return "LogEvent{eventTimeMs=" + this.eventTimeMs + ", eventCode=" + this.eventCode + ", eventUptimeMs=" + this.eventUptimeMs + ", sourceExtension=" + Arrays.toString(this.sourceExtension) + ", sourceExtensionJsonProto3=" + this.sourceExtensionJsonProto3 + ", timezoneOffsetSeconds=" + this.timezoneOffsetSeconds + ", networkConnectionInfo=" + this.networkConnectionInfo + "}";
    }
}
