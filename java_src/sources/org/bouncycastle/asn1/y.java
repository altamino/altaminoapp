package org.bouncycastle.asn1;

/* JADX INFO: loaded from: classes11.dex */
public class y extends IllegalStateException {
    private Throwable cause;

    public y(String str) {
        super(str);
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }

    public y(String str, Throwable th) {
        super(str);
        this.cause = th;
    }
}
