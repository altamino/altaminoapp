package g2;

/* JADX INFO: loaded from: classes11.dex */
final class b extends g {
    private final long nextRequestWaitMillis;
    private final g.a status;

    @Override // g2.g
    public long b() {
        return this.nextRequestWaitMillis;
    }

    @Override // g2.g
    public g.a c() {
        return this.status;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return this.status.equals(gVar.c()) && this.nextRequestWaitMillis == gVar.b();
    }

    public int hashCode() {
        int iHashCode = (this.status.hashCode() ^ 1000003) * 1000003;
        long j6 = this.nextRequestWaitMillis;
        return iHashCode ^ ((int) (j6 ^ (j6 >>> 32)));
    }

    public String toString() {
        return "BackendResponse{status=" + this.status + ", nextRequestWaitMillis=" + this.nextRequestWaitMillis + "}";
    }

    b(g.a aVar, long j6) {
        if (aVar != null) {
            this.status = aVar;
            this.nextRequestWaitMillis = j6;
            return;
        }
        throw new NullPointerException("Null status");
    }
}
