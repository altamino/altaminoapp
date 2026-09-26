package com.google.android.datatransport.runtime.scheduling.persistence;

/* JADX INFO: loaded from: classes.dex */
final class b extends k {
    private final com.google.android.datatransport.runtime.i event;
    private final long id;
    private final com.google.android.datatransport.runtime.p transportContext;

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.k
    public com.google.android.datatransport.runtime.i b() {
        return this.event;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.k
    public long c() {
        return this.id;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.k
    public com.google.android.datatransport.runtime.p d() {
        return this.transportContext;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        return this.id == kVar.c() && this.transportContext.equals(kVar.d()) && this.event.equals(kVar.b());
    }

    public int hashCode() {
        long j6 = this.id;
        return ((((((int) (j6 ^ (j6 >>> 32))) ^ 1000003) * 1000003) ^ this.transportContext.hashCode()) * 1000003) ^ this.event.hashCode();
    }

    public String toString() {
        return "PersistedEvent{id=" + this.id + ", transportContext=" + this.transportContext + ", event=" + this.event + "}";
    }

    b(long j6, com.google.android.datatransport.runtime.p pVar, com.google.android.datatransport.runtime.i iVar) {
        this.id = j6;
        if (pVar != null) {
            this.transportContext = pVar;
            if (iVar != null) {
                this.event = iVar;
                return;
            }
            throw new NullPointerException("Null event");
        }
        throw new NullPointerException("Null transportContext");
    }
}
