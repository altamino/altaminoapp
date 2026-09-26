package org.bouncycastle.asn1;

import java.io.IOException;
import java.util.Enumeration;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes9.dex */
class t2 implements Enumeration {
    private o aIn;
    private Object nextObj = a();

    public t2(byte[] bArr) {
        this.aIn = new o(bArr, true);
    }

    private Object a() {
        try {
            return this.aIn.m();
        } catch (IOException e) {
            throw new y("malformed ASN.1: " + e, e);
        }
    }

    @Override // java.util.Enumeration
    public boolean hasMoreElements() {
        return this.nextObj != null;
    }

    @Override // java.util.Enumeration
    public Object nextElement() {
        Object obj = this.nextObj;
        if (obj == null) {
            throw new NoSuchElementException();
        }
        this.nextObj = a();
        return obj;
    }
}
