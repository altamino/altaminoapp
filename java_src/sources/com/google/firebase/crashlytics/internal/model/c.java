package com.google.firebase.crashlytics.internal.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
final class c extends f0.a {
    private final List<f0.a.AbstractC0235a> buildIdMappingForArch;
    private final int importance;
    private final int pid;
    private final String processName;
    private final long pss;
    private final int reasonCode;
    private final long rss;
    private final long timestamp;
    private final String traceFile;

    static final class b extends f0.a.b {
        private List<f0.a.AbstractC0235a> buildIdMappingForArch;
        private Integer importance;
        private Integer pid;
        private String processName;
        private Long pss;
        private Integer reasonCode;
        private Long rss;
        private Long timestamp;
        private String traceFile;

        @Override // com.google.firebase.crashlytics.internal.model.f0.a.b
        public f0.a.b b(@Nullable List<f0.a.AbstractC0235a> list) {
            this.buildIdMappingForArch = list;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.a.b
        public f0.a.b j(@Nullable String str) {
            this.traceFile = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.a.b
        public f0.a a() {
            String str = "";
            if (this.pid == null) {
                str = " pid";
            }
            if (this.processName == null) {
                str = str + " processName";
            }
            if (this.reasonCode == null) {
                str = str + " reasonCode";
            }
            if (this.importance == null) {
                str = str + " importance";
            }
            if (this.pss == null) {
                str = str + " pss";
            }
            if (this.rss == null) {
                str = str + " rss";
            }
            if (this.timestamp == null) {
                str = str + " timestamp";
            }
            if (str.isEmpty()) {
                return new c(this.pid.intValue(), this.processName, this.reasonCode.intValue(), this.importance.intValue(), this.pss.longValue(), this.rss.longValue(), this.timestamp.longValue(), this.traceFile, this.buildIdMappingForArch);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.a.b
        public f0.a.b e(String str) {
            if (str == null) {
                throw new NullPointerException("Null processName");
            }
            this.processName = str;
            return this;
        }

        b() {
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.a.b
        public f0.a.b c(int i10) {
            this.importance = Integer.valueOf(i10);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.a.b
        public f0.a.b d(int i10) {
            this.pid = Integer.valueOf(i10);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.a.b
        public f0.a.b f(long j6) {
            this.pss = Long.valueOf(j6);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.a.b
        public f0.a.b g(int i10) {
            this.reasonCode = Integer.valueOf(i10);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.a.b
        public f0.a.b h(long j6) {
            this.rss = Long.valueOf(j6);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.a.b
        public f0.a.b i(long j6) {
            this.timestamp = Long.valueOf(j6);
            return this;
        }
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.a
    @Nullable
    public List<f0.a.AbstractC0235a> b() {
        return this.buildIdMappingForArch;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.a
    @NonNull
    public int c() {
        return this.importance;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.a
    @NonNull
    public int d() {
        return this.pid;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.a
    @NonNull
    public String e() {
        return this.processName;
    }

    public boolean equals(Object obj) {
        String str;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.a)) {
            return false;
        }
        f0.a aVar = (f0.a) obj;
        if (this.pid == aVar.d() && this.processName.equals(aVar.e()) && this.reasonCode == aVar.g() && this.importance == aVar.c() && this.pss == aVar.f() && this.rss == aVar.h() && this.timestamp == aVar.i() && ((str = this.traceFile) != null ? str.equals(aVar.j()) : aVar.j() == null)) {
            List<f0.a.AbstractC0235a> list = this.buildIdMappingForArch;
            if (list == null) {
                if (aVar.b() == null) {
                    return true;
                }
            } else if (list.equals(aVar.b())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.a
    @NonNull
    public long f() {
        return this.pss;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.a
    @NonNull
    public int g() {
        return this.reasonCode;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.a
    @NonNull
    public long h() {
        return this.rss;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.a
    @NonNull
    public long i() {
        return this.timestamp;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.a
    @Nullable
    public String j() {
        return this.traceFile;
    }

    private c(int i10, String str, int i11, int i12, long j6, long j10, long j11, @Nullable String str2, @Nullable List<f0.a.AbstractC0235a> list) {
        this.pid = i10;
        this.processName = str;
        this.reasonCode = i11;
        this.importance = i12;
        this.pss = j6;
        this.rss = j10;
        this.timestamp = j11;
        this.traceFile = str2;
        this.buildIdMappingForArch = list;
    }

    public int hashCode() {
        int iHashCode = (((((((this.pid ^ 1000003) * 1000003) ^ this.processName.hashCode()) * 1000003) ^ this.reasonCode) * 1000003) ^ this.importance) * 1000003;
        long j6 = this.pss;
        int i10 = (iHashCode ^ ((int) (j6 ^ (j6 >>> 32)))) * 1000003;
        long j10 = this.rss;
        int i11 = (i10 ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003;
        long j11 = this.timestamp;
        int i12 = (i11 ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003;
        String str = this.traceFile;
        int iHashCode2 = (i12 ^ (str == null ? 0 : str.hashCode())) * 1000003;
        List<f0.a.AbstractC0235a> list = this.buildIdMappingForArch;
        return iHashCode2 ^ (list != null ? list.hashCode() : 0);
    }

    public String toString() {
        return "ApplicationExitInfo{pid=" + this.pid + ", processName=" + this.processName + ", reasonCode=" + this.reasonCode + ", importance=" + this.importance + ", pss=" + this.pss + ", rss=" + this.rss + ", timestamp=" + this.timestamp + ", traceFile=" + this.traceFile + ", buildIdMappingForArch=" + this.buildIdMappingForArch + "}";
    }
}
