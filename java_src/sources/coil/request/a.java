package coil.request;

/* JADX INFO: loaded from: classes4.dex */
public enum a {
    ENABLED(true, true),
    READ_ONLY(true, false),
    WRITE_ONLY(false, true),
    DISABLED(false, false);

    private final boolean readEnabled;
    private final boolean writeEnabled;

    public final boolean b() {
        return this.readEnabled;
    }

    public final boolean c() {
        return this.writeEnabled;
    }

    a(boolean z6, boolean z10) {
        this.readEnabled = z6;
        this.writeEnabled = z10;
    }
}
