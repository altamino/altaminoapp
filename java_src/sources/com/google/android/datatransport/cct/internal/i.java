package com.google.android.datatransport.cct.internal;

import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes8.dex */
final class i extends o {
    private final o.b mobileSubtype;
    private final o.c networkType;

    static final class b extends o.a {
        private o.b mobileSubtype;
        private o.c networkType;

        @Override // com.google.android.datatransport.cct.internal.o.a
        public o.a b(@Nullable o.b bVar) {
            this.mobileSubtype = bVar;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.o.a
        public o.a c(@Nullable o.c cVar) {
            this.networkType = cVar;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.o.a
        public o a() {
            return new i(this.networkType, this.mobileSubtype);
        }

        b() {
        }
    }

    @Override // com.google.android.datatransport.cct.internal.o
    @Nullable
    public o.b b() {
        return this.mobileSubtype;
    }

    @Override // com.google.android.datatransport.cct.internal.o
    @Nullable
    public o.c c() {
        return this.networkType;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        o.c cVar = this.networkType;
        if (cVar != null ? cVar.equals(oVar.c()) : oVar.c() == null) {
            o.b bVar = this.mobileSubtype;
            if (bVar == null) {
                if (oVar.b() == null) {
                    return true;
                }
            } else if (bVar.equals(oVar.b())) {
                return true;
            }
        }
        return false;
    }

    private i(@Nullable o.c cVar, @Nullable o.b bVar) {
        this.networkType = cVar;
        this.mobileSubtype = bVar;
    }

    public int hashCode() {
        o.c cVar = this.networkType;
        int iHashCode = ((cVar == null ? 0 : cVar.hashCode()) ^ 1000003) * 1000003;
        o.b bVar = this.mobileSubtype;
        return iHashCode ^ (bVar != null ? bVar.hashCode() : 0);
    }

    public String toString() {
        return "NetworkConnectionInfo{networkType=" + this.networkType + ", mobileSubtype=" + this.mobileSubtype + "}";
    }
}
