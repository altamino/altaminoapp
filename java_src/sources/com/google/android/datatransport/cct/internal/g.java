package com.google.android.datatransport.cct.internal;

import androidx.annotation.Nullable;
import java.util.List;

/* JADX INFO: loaded from: classes11.dex */
final class g extends m {
    private final k clientInfo;
    private final List<l> logEvents;
    private final Integer logSource;
    private final String logSourceName;
    private final p qosTier;
    private final long requestTimeMs;
    private final long requestUptimeMs;

    static final class b extends m.a {
        private k clientInfo;
        private List<l> logEvents;
        private Integer logSource;
        private String logSourceName;
        private p qosTier;
        private Long requestTimeMs;
        private Long requestUptimeMs;

        @Override // com.google.android.datatransport.cct.internal.m.a
        public m.a b(@Nullable k kVar) {
            this.clientInfo = kVar;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.m.a
        public m.a c(@Nullable List<l> list) {
            this.logEvents = list;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.m.a
        m.a d(@Nullable Integer num) {
            this.logSource = num;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.m.a
        m.a e(@Nullable String str) {
            this.logSourceName = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.m.a
        public m.a f(@Nullable p pVar) {
            this.qosTier = pVar;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.m.a
        public m a() {
            String str = "";
            if (this.requestTimeMs == null) {
                str = " requestTimeMs";
            }
            if (this.requestUptimeMs == null) {
                str = str + " requestUptimeMs";
            }
            if (str.isEmpty()) {
                return new g(this.requestTimeMs.longValue(), this.requestUptimeMs.longValue(), this.clientInfo, this.logSource, this.logSourceName, this.logEvents, this.qosTier);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        b() {
        }

        @Override // com.google.android.datatransport.cct.internal.m.a
        public m.a g(long j6) {
            this.requestTimeMs = Long.valueOf(j6);
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.m.a
        public m.a h(long j6) {
            this.requestUptimeMs = Long.valueOf(j6);
            return this;
        }
    }

    @Override // com.google.android.datatransport.cct.internal.m
    @Nullable
    public k b() {
        return this.clientInfo;
    }

    @Override // com.google.android.datatransport.cct.internal.m
    @Nullable
    public List<l> c() {
        return this.logEvents;
    }

    @Override // com.google.android.datatransport.cct.internal.m
    @Nullable
    public Integer d() {
        return this.logSource;
    }

    @Override // com.google.android.datatransport.cct.internal.m
    @Nullable
    public String e() {
        return this.logSourceName;
    }

    public boolean equals(Object obj) {
        k kVar;
        Integer num;
        String str;
        List<l> list;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        if (this.requestTimeMs == mVar.g() && this.requestUptimeMs == mVar.h() && ((kVar = this.clientInfo) != null ? kVar.equals(mVar.b()) : mVar.b() == null) && ((num = this.logSource) != null ? num.equals(mVar.d()) : mVar.d() == null) && ((str = this.logSourceName) != null ? str.equals(mVar.e()) : mVar.e() == null) && ((list = this.logEvents) != null ? list.equals(mVar.c()) : mVar.c() == null)) {
            p pVar = this.qosTier;
            if (pVar == null) {
                if (mVar.f() == null) {
                    return true;
                }
            } else if (pVar.equals(mVar.f())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.datatransport.cct.internal.m
    @Nullable
    public p f() {
        return this.qosTier;
    }

    @Override // com.google.android.datatransport.cct.internal.m
    public long g() {
        return this.requestTimeMs;
    }

    @Override // com.google.android.datatransport.cct.internal.m
    public long h() {
        return this.requestUptimeMs;
    }

    private g(long j6, long j10, @Nullable k kVar, @Nullable Integer num, @Nullable String str, @Nullable List<l> list, @Nullable p pVar) {
        this.requestTimeMs = j6;
        this.requestUptimeMs = j10;
        this.clientInfo = kVar;
        this.logSource = num;
        this.logSourceName = str;
        this.logEvents = list;
        this.qosTier = pVar;
    }

    public int hashCode() {
        long j6 = this.requestTimeMs;
        long j10 = this.requestUptimeMs;
        int i10 = (((((int) (j6 ^ (j6 >>> 32))) ^ 1000003) * 1000003) ^ ((int) ((j10 >>> 32) ^ j10))) * 1000003;
        k kVar = this.clientInfo;
        int iHashCode = (i10 ^ (kVar == null ? 0 : kVar.hashCode())) * 1000003;
        Integer num = this.logSource;
        int iHashCode2 = (iHashCode ^ (num == null ? 0 : num.hashCode())) * 1000003;
        String str = this.logSourceName;
        int iHashCode3 = (iHashCode2 ^ (str == null ? 0 : str.hashCode())) * 1000003;
        List<l> list = this.logEvents;
        int iHashCode4 = (iHashCode3 ^ (list == null ? 0 : list.hashCode())) * 1000003;
        p pVar = this.qosTier;
        return iHashCode4 ^ (pVar != null ? pVar.hashCode() : 0);
    }

    public String toString() {
        return "LogRequest{requestTimeMs=" + this.requestTimeMs + ", requestUptimeMs=" + this.requestUptimeMs + ", clientInfo=" + this.clientInfo + ", logSource=" + this.logSource + ", logSourceName=" + this.logSourceName + ", logEvents=" + this.logEvents + ", qosTier=" + this.qosTier + "}";
    }
}
