package com.google.android.play.integrity.internal;

/* JADX INFO: loaded from: classes8.dex */
final class q extends r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f1451a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f1452b;

    q(int i10, long j6) {
        this.f1451a = i10;
        this.f1452b = j6;
    }

    @Override // com.google.android.play.integrity.internal.r
    public final int a() {
        return this.f1451a;
    }

    @Override // com.google.android.play.integrity.internal.r
    public final long b() {
        return this.f1452b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof r) {
            r rVar = (r) obj;
            if (this.f1451a == rVar.a() && this.f1452b == rVar.b()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i10 = this.f1451a ^ 1000003;
        long j6 = this.f1452b;
        return (i10 * 1000003) ^ ((int) (j6 ^ (j6 >>> 32)));
    }

    public final String toString() {
        return "EventRecord{eventType=" + this.f1451a + ", eventTimestamp=" + this.f1452b + "}";
    }
}
