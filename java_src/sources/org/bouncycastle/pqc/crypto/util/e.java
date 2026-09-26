package org.bouncycastle.pqc.crypto.util;

import e9.h;
import java.util.HashMap;
import java.util.Map;
import l9.p;
import org.bouncycastle.asn1.p1;
import org.bouncycastle.asn1.u;
import org.bouncycastle.crypto.digests.g;
import org.bouncycastle.crypto.digests.j;
import org.bouncycastle.crypto.digests.k;

/* JADX INFO: loaded from: classes10.dex */
class e {
    static final w8.a AlgID_qTESLA_p_I;
    static final w8.a AlgID_qTESLA_p_III;
    static final w8.a SPHINCS_SHA3_256;
    static final w8.a SPHINCS_SHA512_256;
    static final w8.a XMSS_SHA256;
    static final w8.a XMSS_SHA512;
    static final w8.a XMSS_SHAKE128;
    static final w8.a XMSS_SHAKE256;
    static final Map categories;

    static {
        u uVar = e9.e.qTESLA_p_I;
        AlgID_qTESLA_p_I = new w8.a(uVar);
        u uVar2 = e9.e.qTESLA_p_III;
        AlgID_qTESLA_p_III = new w8.a(uVar2);
        SPHINCS_SHA3_256 = new w8.a(t8.a.id_sha3_256);
        SPHINCS_SHA512_256 = new w8.a(t8.a.id_sha512_256);
        XMSS_SHA256 = new w8.a(t8.a.id_sha256);
        XMSS_SHA512 = new w8.a(t8.a.id_sha512);
        XMSS_SHAKE128 = new w8.a(t8.a.id_shake128);
        XMSS_SHAKE256 = new w8.a(t8.a.id_shake256);
        HashMap map = new HashMap();
        categories = map;
        map.put(uVar, org.bouncycastle.util.d.c(5));
        map.put(uVar2, org.bouncycastle.util.d.c(6));
    }

    public static w8.a a(String str) {
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

    static x8.c b(u uVar) {
        if (uVar.s(t8.a.id_sha256)) {
            return new g();
        }
        if (uVar.s(t8.a.id_sha512)) {
            return new j();
        }
        if (uVar.s(t8.a.id_shake128)) {
            return new k(128);
        }
        if (uVar.s(t8.a.id_shake256)) {
            return new k(256);
        }
        throw new IllegalArgumentException("unrecognized digest OID: " + uVar);
    }

    public static String c(u uVar) {
        if (uVar.s(u8.a.idSHA1)) {
            return "SHA-1";
        }
        if (uVar.s(t8.a.id_sha224)) {
            return "SHA-224";
        }
        if (uVar.s(t8.a.id_sha256)) {
            return p.SHA_256;
        }
        if (uVar.s(t8.a.id_sha384)) {
            return "SHA-384";
        }
        if (uVar.s(t8.a.id_sha512)) {
            return p.SHA_512;
        }
        throw new IllegalArgumentException("unrecognised digest algorithm: " + uVar);
    }

    static w8.a d(int i10) {
        if (i10 == 5) {
            return AlgID_qTESLA_p_I;
        }
        if (i10 == 6) {
            return AlgID_qTESLA_p_III;
        }
        throw new IllegalArgumentException("unknown security category: " + i10);
    }

    static int e(w8.a aVar) {
        return ((Integer) categories.get(aVar.j())).intValue();
    }

    static w8.a f(String str) {
        if (str.equals(k9.a.SHA3_256)) {
            return SPHINCS_SHA3_256;
        }
        if (str.equals(k9.a.SHA512_256)) {
            return SPHINCS_SHA512_256;
        }
        throw new IllegalArgumentException("unknown tree digest: " + str);
    }

    static String g(h hVar) {
        w8.a aVarJ = hVar.j();
        if (aVarJ.j().s(SPHINCS_SHA3_256.j())) {
            return k9.a.SHA3_256;
        }
        if (aVarJ.j().s(SPHINCS_SHA512_256.j())) {
            return k9.a.SHA512_256;
        }
        throw new IllegalArgumentException("unknown tree digest: " + aVarJ.j());
    }

    static w8.a h(String str) {
        if (str.equals(p.SHA_256)) {
            return XMSS_SHA256;
        }
        if (str.equals(p.SHA_512)) {
            return XMSS_SHA512;
        }
        if (str.equals(p.SHAKE128)) {
            return XMSS_SHAKE128;
        }
        if (str.equals(p.SHAKE256)) {
            return XMSS_SHAKE256;
        }
        throw new IllegalArgumentException("unknown tree digest: " + str);
    }
}
