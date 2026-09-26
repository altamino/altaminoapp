package r4;

/* JADX INFO: loaded from: classes10.dex */
public class b implements a {
    private static b singleton;

    public static b a() {
        if (singleton == null) {
            singleton = new b();
        }
        return singleton;
    }

    private b() {
    }

    @Override // r4.a
    public long currentTimeMillis() {
        return System.currentTimeMillis();
    }
}
