package com.google.android.datatransport.cct.internal;

/* JADX INFO: loaded from: classes11.dex */
final class h extends n {
    private final long nextRequestWaitMillis;

    @Override // com.google.android.datatransport.cct.internal.n
    public long c() {
        return this.nextRequestWaitMillis;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof n) && this.nextRequestWaitMillis == ((n) obj).c();
    }

    public int hashCode() {
        long j6 = this.nextRequestWaitMillis;
        return ((int) (j6 ^ (j6 >>> 32))) ^ 1000003;
    }

    public String toString() {
        return "LogResponse{nextRequestWaitMillis=" + this.nextRequestWaitMillis + "}";
    }

    h(long j6) {
        this.nextRequestWaitMillis = j6;
    }
}
