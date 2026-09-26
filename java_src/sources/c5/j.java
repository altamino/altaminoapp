package c5;

/* JADX INFO: loaded from: classes7.dex */
public class j extends i {
    private final long throttleEndTimeMillis;

    public j(long j6) {
        this("Fetch was throttled.", j6);
    }

    public j(String str, long j6) {
        super(str);
        this.throttleEndTimeMillis = j6;
    }
}
