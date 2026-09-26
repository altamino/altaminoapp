package org.bouncycastle.pqc.crypto.lms;

import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public abstract class k extends org.bouncycastle.crypto.params.a implements org.bouncycastle.util.c {
    protected k(boolean z6) {
        super(z6);
    }

    public abstract byte[] getEncoded() throws IOException;
}
