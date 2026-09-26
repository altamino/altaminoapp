package l9;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
class f {
    private static Map<String, org.bouncycastle.asn1.u> nameToOid = new HashMap();
    private static Map<org.bouncycastle.asn1.u, String> oidToName = new HashMap();

    static {
        Map<String, org.bouncycastle.asn1.u> map = nameToOid;
        org.bouncycastle.asn1.u uVar = t8.a.id_sha256;
        map.put(p.SHA_256, uVar);
        Map<String, org.bouncycastle.asn1.u> map2 = nameToOid;
        org.bouncycastle.asn1.u uVar2 = t8.a.id_sha512;
        map2.put(p.SHA_512, uVar2);
        Map<String, org.bouncycastle.asn1.u> map3 = nameToOid;
        org.bouncycastle.asn1.u uVar3 = t8.a.id_shake128;
        map3.put(p.SHAKE128, uVar3);
        Map<String, org.bouncycastle.asn1.u> map4 = nameToOid;
        org.bouncycastle.asn1.u uVar4 = t8.a.id_shake256;
        map4.put(p.SHAKE256, uVar4);
        oidToName.put(uVar, p.SHA_256);
        oidToName.put(uVar2, p.SHA_512);
        oidToName.put(uVar3, p.SHAKE128);
        oidToName.put(uVar4, p.SHAKE256);
    }

    static x8.c a(org.bouncycastle.asn1.u uVar) {
        if (uVar.s(t8.a.id_sha256)) {
            return new org.bouncycastle.crypto.digests.g();
        }
        if (uVar.s(t8.a.id_sha512)) {
            return new org.bouncycastle.crypto.digests.j();
        }
        if (uVar.s(t8.a.id_shake128)) {
            return new org.bouncycastle.crypto.digests.k(128);
        }
        if (uVar.s(t8.a.id_shake256)) {
            return new org.bouncycastle.crypto.digests.k(256);
        }
        throw new IllegalArgumentException("unrecognized digest OID: " + uVar);
    }

    static String b(org.bouncycastle.asn1.u uVar) {
        String str = oidToName.get(uVar);
        if (str != null) {
            return str;
        }
        throw new IllegalArgumentException("unrecognized digest oid: " + uVar);
    }

    static org.bouncycastle.asn1.u c(String str) {
        org.bouncycastle.asn1.u uVar = nameToOid.get(str);
        if (uVar != null) {
            return uVar;
        }
        throw new IllegalArgumentException("unrecognized digest name: " + str);
    }
}
