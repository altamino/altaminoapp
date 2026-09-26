package org.bouncycastle.pqc.crypto.lms;

import java.util.HashMap;
import java.util.Map;
import org.bouncycastle.asn1.u;

/* JADX INFO: loaded from: classes5.dex */
class b {
    private static Map<String, u> nameToOid = new HashMap();
    private static Map<u, String> oidToName = new HashMap();

    static {
        Map<String, u> map = nameToOid;
        u uVar = t8.a.id_sha256;
        map.put(l9.p.SHA_256, uVar);
        Map<String, u> map2 = nameToOid;
        u uVar2 = t8.a.id_sha512;
        map2.put(l9.p.SHA_512, uVar2);
        Map<String, u> map3 = nameToOid;
        u uVar3 = t8.a.id_shake128;
        map3.put(l9.p.SHAKE128, uVar3);
        Map<String, u> map4 = nameToOid;
        u uVar4 = t8.a.id_shake256;
        map4.put(l9.p.SHAKE256, uVar4);
        oidToName.put(uVar, l9.p.SHA_256);
        oidToName.put(uVar2, l9.p.SHA_512);
        oidToName.put(uVar3, l9.p.SHAKE128);
        oidToName.put(uVar4, l9.p.SHAKE256);
    }

    static x8.c a(u uVar) {
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
}
