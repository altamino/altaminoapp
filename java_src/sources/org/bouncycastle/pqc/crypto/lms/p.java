package org.bouncycastle.pqc.crypto.lms;

import java.util.HashMap;
import java.util.Map;
import org.bouncycastle.asn1.u;

/* JADX INFO: loaded from: classes5.dex */
public class p {
    public static final p lms_sha256_n32_h10;
    public static final p lms_sha256_n32_h15;
    public static final p lms_sha256_n32_h20;
    public static final p lms_sha256_n32_h25;
    public static final p lms_sha256_n32_h5;
    private static Map<Object, p> paramBuilders;
    private final u digestOid;
    private final int h;
    private final int m;
    private final int type;

    static class a extends HashMap<Object, p> {
        a() {
            p pVar = p.lms_sha256_n32_h5;
            put(Integer.valueOf(pVar.type), pVar);
            p pVar2 = p.lms_sha256_n32_h10;
            put(Integer.valueOf(pVar2.type), pVar2);
            p pVar3 = p.lms_sha256_n32_h15;
            put(Integer.valueOf(pVar3.type), pVar3);
            p pVar4 = p.lms_sha256_n32_h20;
            put(Integer.valueOf(pVar4.type), pVar4);
            p pVar5 = p.lms_sha256_n32_h25;
            put(Integer.valueOf(pVar5.type), pVar5);
        }
    }

    static {
        u uVar = t8.a.id_sha256;
        lms_sha256_n32_h5 = new p(5, 32, 5, uVar);
        lms_sha256_n32_h10 = new p(6, 32, 10, uVar);
        lms_sha256_n32_h15 = new p(7, 32, 15, uVar);
        lms_sha256_n32_h20 = new p(8, 32, 20, uVar);
        lms_sha256_n32_h25 = new p(9, 32, 25, uVar);
        paramBuilders = new a();
    }

    protected p(int i10, int i11, int i12, u uVar) {
        this.type = i10;
        this.m = i11;
        this.h = i12;
        this.digestOid = uVar;
    }

    static p e(int i10) {
        return paramBuilders.get(Integer.valueOf(i10));
    }

    public u b() {
        return this.digestOid;
    }

    public int c() {
        return this.h;
    }

    public int d() {
        return this.m;
    }

    public int f() {
        return this.type;
    }
}
