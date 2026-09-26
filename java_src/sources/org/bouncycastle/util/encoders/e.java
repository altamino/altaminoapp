package org.bouncycastle.util.encoders;

/* JADX INFO: loaded from: classes10.dex */
public class e extends IllegalStateException {
    private Throwable cause;

    e(String str, Throwable th) {
        super(str);
        this.cause = th;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }
}
