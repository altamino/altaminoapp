package org.bouncycastle.asn1;

/* JADX INFO: loaded from: classes10.dex */
public class w2 {
    private int index = 0;
    private String oid;

    public w2(String str) {
        this.oid = str;
    }

    public boolean a() {
        return this.index != -1;
    }

    public String b() {
        int i10 = this.index;
        if (i10 == -1) {
            return null;
        }
        int iIndexOf = this.oid.indexOf(46, i10);
        if (iIndexOf == -1) {
            String strSubstring = this.oid.substring(this.index);
            this.index = -1;
            return strSubstring;
        }
        String strSubstring2 = this.oid.substring(this.index, iIndexOf);
        this.index = iIndexOf + 1;
        return strSubstring2;
    }
}
