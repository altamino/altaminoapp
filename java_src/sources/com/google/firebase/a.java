package com.google.firebase;

/* JADX INFO: loaded from: classes2.dex */
final class a extends o {
    private final long elapsedRealtime;
    private final long epochMillis;
    private final long uptimeMillis;

    @Override // com.google.firebase.o
    public long b() {
        return this.elapsedRealtime;
    }

    @Override // com.google.firebase.o
    public long c() {
        return this.epochMillis;
    }

    @Override // com.google.firebase.o
    public long d() {
        return this.uptimeMillis;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        return this.epochMillis == oVar.c() && this.elapsedRealtime == oVar.b() && this.uptimeMillis == oVar.d();
    }

    public int hashCode() {
        long j6 = this.epochMillis;
        long j10 = this.elapsedRealtime;
        int i10 = (((((int) (j6 ^ (j6 >>> 32))) ^ 1000003) * 1000003) ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003;
        long j11 = this.uptimeMillis;
        return i10 ^ ((int) ((j11 >>> 32) ^ j11));
    }

    public String toString() {
        return "StartupTime{epochMillis=" + this.epochMillis + ", elapsedRealtime=" + this.elapsedRealtime + ", uptimeMillis=" + this.uptimeMillis + "}";
    }

    a(long j6, long j10, long j11) {
        this.epochMillis = j6;
        this.elapsedRealtime = j10;
        this.uptimeMillis = j11;
    }
}
