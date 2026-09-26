package m4;

import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
final class a extends r {
    private final List<String> usedDates;
    private final String userAgent;

    @Override // m4.r
    public List<String> b() {
        return this.usedDates;
    }

    @Override // m4.r
    public String c() {
        return this.userAgent;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof r)) {
            return false;
        }
        r rVar = (r) obj;
        return this.userAgent.equals(rVar.c()) && this.usedDates.equals(rVar.b());
    }

    public int hashCode() {
        return ((this.userAgent.hashCode() ^ 1000003) * 1000003) ^ this.usedDates.hashCode();
    }

    public String toString() {
        return "HeartBeatResult{userAgent=" + this.userAgent + ", usedDates=" + this.usedDates + "}";
    }

    a(String str, List<String> list) {
        if (str != null) {
            this.userAgent = str;
            if (list != null) {
                this.usedDates = list;
                return;
            }
            throw new NullPointerException("Null usedDates");
        }
        throw new NullPointerException("Null userAgent");
    }
}
