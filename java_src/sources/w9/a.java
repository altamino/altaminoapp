package w9;

import java.io.IOException;

/* JADX INFO: loaded from: classes10.dex */
public class a extends IOException {
    private Throwable cause;

    public a(String str) {
        super(str);
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }

    public a(String str, Throwable th) {
        super(str);
        this.cause = th;
    }
}
