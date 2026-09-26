package com.google.android.datatransport.runtime;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.util.Arrays;

/* JADX INFO: loaded from: classes7.dex */
final class d extends p {
    private final String backendName;
    private final byte[] extras;
    private final f2.d priority;

    static final class b extends p.a {
        private String backendName;
        private byte[] extras;
        private f2.d priority;

        @Override // com.google.android.datatransport.runtime.p.a
        public p.a c(@Nullable byte[] bArr) {
            this.extras = bArr;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.p.a
        public p a() {
            String str = "";
            if (this.backendName == null) {
                str = " backendName";
            }
            if (this.priority == null) {
                str = str + " priority";
            }
            if (str.isEmpty()) {
                return new d(this.backendName, this.extras, this.priority);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.android.datatransport.runtime.p.a
        public p.a b(String str) {
            if (str == null) {
                throw new NullPointerException("Null backendName");
            }
            this.backendName = str;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.p.a
        public p.a d(f2.d dVar) {
            if (dVar == null) {
                throw new NullPointerException("Null priority");
            }
            this.priority = dVar;
            return this;
        }

        b() {
        }
    }

    @Override // com.google.android.datatransport.runtime.p
    public String b() {
        return this.backendName;
    }

    @Override // com.google.android.datatransport.runtime.p
    @Nullable
    public byte[] c() {
        return this.extras;
    }

    @Override // com.google.android.datatransport.runtime.p
    @RestrictTo
    public f2.d d() {
        return this.priority;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof p)) {
            return false;
        }
        p pVar = (p) obj;
        if (this.backendName.equals(pVar.b())) {
            if (Arrays.equals(this.extras, pVar instanceof d ? ((d) pVar).extras : pVar.c()) && this.priority.equals(pVar.d())) {
                return true;
            }
        }
        return false;
    }

    private d(String str, @Nullable byte[] bArr, f2.d dVar) {
        this.backendName = str;
        this.extras = bArr;
        this.priority = dVar;
    }

    public int hashCode() {
        return ((((this.backendName.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.extras)) * 1000003) ^ this.priority.hashCode();
    }
}
