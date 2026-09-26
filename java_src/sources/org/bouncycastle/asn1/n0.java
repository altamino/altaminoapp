package org.bouncycastle.asn1;

/* JADX INFO: loaded from: classes10.dex */
public abstract class n0 {
    public static String a(int i10, int i11) {
        StringBuilder sb;
        String str;
        if (i10 == 64) {
            sb = new StringBuilder();
            str = "[APPLICATION ";
        } else if (i10 == 128) {
            sb = new StringBuilder();
            str = "[CONTEXT ";
        } else if (i10 != 192) {
            sb = new StringBuilder();
            str = "[UNIVERSAL ";
        } else {
            sb = new StringBuilder();
            str = "[PRIVATE ";
        }
        sb.append(str);
        sb.append(i11);
        sb.append("]");
        return sb.toString();
    }
}
