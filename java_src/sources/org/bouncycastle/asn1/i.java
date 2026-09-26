package org.bouncycastle.asn1;

import java.io.IOException;

/* JADX INFO: loaded from: classes11.dex */
public class i extends IOException {
    private Throwable cause;

    i(String str) {
        super(str);
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }

    i(String str, Throwable th) {
        super(str);
        this.cause = th;
    }
}
