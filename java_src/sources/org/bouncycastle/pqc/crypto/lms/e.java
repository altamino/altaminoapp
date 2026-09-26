package org.bouncycastle.pqc.crypto.lms;

import java.util.HashMap;
import java.util.Map;
import org.bouncycastle.asn1.u;

/* JADX INFO: loaded from: classes5.dex */
public class e {
    public static final int reserved = 0;
    public static final e sha256_n32_w1;
    public static final e sha256_n32_w2;
    public static final e sha256_n32_w4;
    public static final e sha256_n32_w8;
    private static final Map<Object, e> suppliers;
    private final u digestOID;
    private final int ls;
    private final int n;
    private final int p;
    private final int sigLen;
    private final int type;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final int f3301w;

    static class a extends HashMap<Object, e> {
        a() {
            e eVar = e.sha256_n32_w1;
            put(Integer.valueOf(eVar.type), eVar);
            e eVar2 = e.sha256_n32_w2;
            put(Integer.valueOf(eVar2.type), eVar2);
            e eVar3 = e.sha256_n32_w4;
            put(Integer.valueOf(eVar3.type), eVar3);
            e eVar4 = e.sha256_n32_w8;
            put(Integer.valueOf(eVar4.type), eVar4);
        }
    }

    static {
        u uVar = t8.a.id_sha256;
        sha256_n32_w1 = new e(1, 32, 1, 265, 7, 8516, uVar);
        sha256_n32_w2 = new e(2, 32, 2, 133, 6, 4292, uVar);
        sha256_n32_w4 = new e(3, 32, 4, 67, 4, 2180, uVar);
        sha256_n32_w8 = new e(4, 32, 8, 34, 0, 1124, uVar);
        suppliers = new a();
    }

    protected e(int i10, int i11, int i12, int i13, int i14, int i15, u uVar) {
        this.type = i10;
        this.n = i11;
        this.f3301w = i12;
        this.p = i13;
        this.ls = i14;
        this.sigLen = i15;
        this.digestOID = uVar;
    }

    public static e f(int i10) {
        return suppliers.get(Integer.valueOf(i10));
    }

    public u b() {
        return this.digestOID;
    }

    public int c() {
        return this.ls;
    }

    public int d() {
        return this.n;
    }

    public int e() {
        return this.p;
    }

    public int g() {
        return this.type;
    }

    public int h() {
        return this.f3301w;
    }
}
