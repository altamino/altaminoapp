package com.google.android.datatransport.runtime;

import androidx.annotation.Nullable;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
final class b extends i {
    private final Map<String, String> autoMetadata;
    private final Integer code;
    private final h encodedPayload;
    private final long eventMillis;
    private final String transportName;
    private final long uptimeMillis;

    /* JADX INFO: renamed from: com.google.android.datatransport.runtime.b$b, reason: collision with other inner class name */
    static final class C0161b extends i.a {
        private Map<String, String> autoMetadata;
        private Integer code;
        private h encodedPayload;
        private Long eventMillis;
        private String transportName;
        private Long uptimeMillis;

        @Override // com.google.android.datatransport.runtime.i.a
        public i.a g(Integer num) {
            this.code = num;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.i.a
        public i d() {
            String str = "";
            if (this.transportName == null) {
                str = " transportName";
            }
            if (this.encodedPayload == null) {
                str = str + " encodedPayload";
            }
            if (this.eventMillis == null) {
                str = str + " eventMillis";
            }
            if (this.uptimeMillis == null) {
                str = str + " uptimeMillis";
            }
            if (this.autoMetadata == null) {
                str = str + " autoMetadata";
            }
            if (str.isEmpty()) {
                return new b(this.transportName, this.code, this.encodedPayload, this.eventMillis.longValue(), this.uptimeMillis.longValue(), this.autoMetadata);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.android.datatransport.runtime.i.a
        protected Map<String, String> e() {
            Map<String, String> map = this.autoMetadata;
            if (map != null) {
                return map;
            }
            throw new IllegalStateException("Property \"autoMetadata\" has not been set");
        }

        @Override // com.google.android.datatransport.runtime.i.a
        protected i.a f(Map<String, String> map) {
            if (map == null) {
                throw new NullPointerException("Null autoMetadata");
            }
            this.autoMetadata = map;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.i.a
        public i.a h(h hVar) {
            if (hVar == null) {
                throw new NullPointerException("Null encodedPayload");
            }
            this.encodedPayload = hVar;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.i.a
        public i.a j(String str) {
            if (str == null) {
                throw new NullPointerException("Null transportName");
            }
            this.transportName = str;
            return this;
        }

        C0161b() {
        }

        @Override // com.google.android.datatransport.runtime.i.a
        public i.a i(long j6) {
            this.eventMillis = Long.valueOf(j6);
            return this;
        }

        @Override // com.google.android.datatransport.runtime.i.a
        public i.a k(long j6) {
            this.uptimeMillis = Long.valueOf(j6);
            return this;
        }
    }

    @Override // com.google.android.datatransport.runtime.i
    protected Map<String, String> c() {
        return this.autoMetadata;
    }

    @Override // com.google.android.datatransport.runtime.i
    @Nullable
    public Integer d() {
        return this.code;
    }

    @Override // com.google.android.datatransport.runtime.i
    public h e() {
        return this.encodedPayload;
    }

    public boolean equals(Object obj) {
        Integer num;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        return this.transportName.equals(iVar.j()) && ((num = this.code) != null ? num.equals(iVar.d()) : iVar.d() == null) && this.encodedPayload.equals(iVar.e()) && this.eventMillis == iVar.f() && this.uptimeMillis == iVar.k() && this.autoMetadata.equals(iVar.c());
    }

    @Override // com.google.android.datatransport.runtime.i
    public long f() {
        return this.eventMillis;
    }

    @Override // com.google.android.datatransport.runtime.i
    public String j() {
        return this.transportName;
    }

    @Override // com.google.android.datatransport.runtime.i
    public long k() {
        return this.uptimeMillis;
    }

    private b(String str, @Nullable Integer num, h hVar, long j6, long j10, Map<String, String> map) {
        this.transportName = str;
        this.code = num;
        this.encodedPayload = hVar;
        this.eventMillis = j6;
        this.uptimeMillis = j10;
        this.autoMetadata = map;
    }

    public int hashCode() {
        int iHashCode = (this.transportName.hashCode() ^ 1000003) * 1000003;
        Integer num = this.code;
        int iHashCode2 = (((iHashCode ^ (num == null ? 0 : num.hashCode())) * 1000003) ^ this.encodedPayload.hashCode()) * 1000003;
        long j6 = this.eventMillis;
        int i10 = (iHashCode2 ^ ((int) (j6 ^ (j6 >>> 32)))) * 1000003;
        long j10 = this.uptimeMillis;
        return ((i10 ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003) ^ this.autoMetadata.hashCode();
    }

    public String toString() {
        return "EventInternal{transportName=" + this.transportName + ", code=" + this.code + ", encodedPayload=" + this.encodedPayload + ", eventMillis=" + this.eventMillis + ", uptimeMillis=" + this.uptimeMillis + ", autoMetadata=" + this.autoMetadata + "}";
    }
}
