package t9;

import l9.p;
import org.bouncycastle.asn1.u;

/* JADX INFO: loaded from: classes9.dex */
class e {
    static u a(String str) {
        if (str.equals(p.SHA_256)) {
            return t8.a.id_sha256;
        }
        if (str.equals(p.SHA_512)) {
            return t8.a.id_sha512;
        }
        if (str.equals(p.SHAKE128)) {
            return t8.a.id_shake128;
        }
        if (str.equals(p.SHAKE256)) {
            return t8.a.id_shake256;
        }
        throw new IllegalArgumentException("unrecognized digest: " + str);
    }
}
