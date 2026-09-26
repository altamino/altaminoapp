package n9;

import l9.p;
import org.bouncycastle.asn1.p1;

/* JADX INFO: loaded from: classes10.dex */
class g {
    static w8.a a(String str) {
        if (str.equals("SHA-1")) {
            return new w8.a(u8.a.idSHA1, p1.INSTANCE);
        }
        if (str.equals("SHA-224")) {
            return new w8.a(t8.a.id_sha224);
        }
        if (str.equals(p.SHA_256)) {
            return new w8.a(t8.a.id_sha256);
        }
        if (str.equals("SHA-384")) {
            return new w8.a(t8.a.id_sha384);
        }
        if (str.equals(p.SHA_512)) {
            return new w8.a(t8.a.id_sha512);
        }
        throw new IllegalArgumentException("unrecognised digest algorithm: " + str);
    }

    static x8.c b(w8.a aVar) {
        if (aVar.j().s(u8.a.idSHA1)) {
            return y8.a.b();
        }
        if (aVar.j().s(t8.a.id_sha224)) {
            return y8.a.c();
        }
        if (aVar.j().s(t8.a.id_sha256)) {
            return y8.a.d();
        }
        if (aVar.j().s(t8.a.id_sha384)) {
            return y8.a.e();
        }
        if (aVar.j().s(t8.a.id_sha512)) {
            return y8.a.j();
        }
        throw new IllegalArgumentException("unrecognised OID in digest algorithm identifier: " + aVar.j());
    }
}
