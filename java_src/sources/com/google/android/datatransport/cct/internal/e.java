package com.google.android.datatransport.cct.internal;

import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes7.dex */
final class e extends k {
    private final com.google.android.datatransport.cct.internal.a androidClientInfo;
    private final k.b clientType;

    static final class b extends k.a {
        private com.google.android.datatransport.cct.internal.a androidClientInfo;
        private k.b clientType;

        @Override // com.google.android.datatransport.cct.internal.k.a
        public k.a b(@Nullable com.google.android.datatransport.cct.internal.a aVar) {
            this.androidClientInfo = aVar;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.k.a
        public k.a c(@Nullable k.b bVar) {
            this.clientType = bVar;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.k.a
        public k a() {
            return new e(this.clientType, this.androidClientInfo);
        }

        b() {
        }
    }

    @Override // com.google.android.datatransport.cct.internal.k
    @Nullable
    public com.google.android.datatransport.cct.internal.a b() {
        return this.androidClientInfo;
    }

    @Override // com.google.android.datatransport.cct.internal.k
    @Nullable
    public k.b c() {
        return this.clientType;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        k.b bVar = this.clientType;
        if (bVar != null ? bVar.equals(kVar.c()) : kVar.c() == null) {
            com.google.android.datatransport.cct.internal.a aVar = this.androidClientInfo;
            if (aVar == null) {
                if (kVar.b() == null) {
                    return true;
                }
            } else if (aVar.equals(kVar.b())) {
                return true;
            }
        }
        return false;
    }

    private e(@Nullable k.b bVar, @Nullable com.google.android.datatransport.cct.internal.a aVar) {
        this.clientType = bVar;
        this.androidClientInfo = aVar;
    }

    public int hashCode() {
        k.b bVar = this.clientType;
        int iHashCode = ((bVar == null ? 0 : bVar.hashCode()) ^ 1000003) * 1000003;
        com.google.android.datatransport.cct.internal.a aVar = this.androidClientInfo;
        return iHashCode ^ (aVar != null ? aVar.hashCode() : 0);
    }

    public String toString() {
        return "ClientInfo{clientType=" + this.clientType + ", androidClientInfo=" + this.androidClientInfo + "}";
    }
}
