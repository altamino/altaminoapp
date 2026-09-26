package l9;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class r {
    private static final Map<Integer, r> paramsLookupTable;
    private final int height;
    private final int layers;
    private final w oid;
    private final x xmssParams;

    static {
        HashMap map = new HashMap();
        Integer numC = org.bouncycastle.util.d.c(1);
        org.bouncycastle.asn1.u uVar = t8.a.id_sha256;
        map.put(numC, new r(20, 2, uVar));
        map.put(org.bouncycastle.util.d.c(2), new r(20, 4, uVar));
        map.put(org.bouncycastle.util.d.c(3), new r(40, 2, uVar));
        map.put(org.bouncycastle.util.d.c(4), new r(40, 4, uVar));
        map.put(org.bouncycastle.util.d.c(5), new r(40, 8, uVar));
        map.put(org.bouncycastle.util.d.c(6), new r(60, 3, uVar));
        map.put(org.bouncycastle.util.d.c(7), new r(60, 6, uVar));
        map.put(org.bouncycastle.util.d.c(8), new r(60, 12, uVar));
        Integer numC2 = org.bouncycastle.util.d.c(9);
        org.bouncycastle.asn1.u uVar2 = t8.a.id_sha512;
        map.put(numC2, new r(20, 2, uVar2));
        map.put(org.bouncycastle.util.d.c(10), new r(20, 4, uVar2));
        map.put(org.bouncycastle.util.d.c(11), new r(40, 2, uVar2));
        map.put(org.bouncycastle.util.d.c(12), new r(40, 4, uVar2));
        map.put(org.bouncycastle.util.d.c(13), new r(40, 8, uVar2));
        map.put(org.bouncycastle.util.d.c(14), new r(60, 3, uVar2));
        map.put(org.bouncycastle.util.d.c(15), new r(60, 6, uVar2));
        map.put(org.bouncycastle.util.d.c(16), new r(60, 12, uVar2));
        Integer numC3 = org.bouncycastle.util.d.c(17);
        org.bouncycastle.asn1.u uVar3 = t8.a.id_shake128;
        map.put(numC3, new r(20, 2, uVar3));
        map.put(org.bouncycastle.util.d.c(18), new r(20, 4, uVar3));
        map.put(org.bouncycastle.util.d.c(19), new r(40, 2, uVar3));
        map.put(org.bouncycastle.util.d.c(20), new r(40, 4, uVar3));
        map.put(org.bouncycastle.util.d.c(21), new r(40, 8, uVar3));
        map.put(org.bouncycastle.util.d.c(22), new r(60, 3, uVar3));
        map.put(org.bouncycastle.util.d.c(23), new r(60, 6, uVar3));
        map.put(org.bouncycastle.util.d.c(24), new r(60, 12, uVar3));
        Integer numC4 = org.bouncycastle.util.d.c(25);
        org.bouncycastle.asn1.u uVar4 = t8.a.id_shake256;
        map.put(numC4, new r(20, 2, uVar4));
        map.put(org.bouncycastle.util.d.c(26), new r(20, 4, uVar4));
        map.put(org.bouncycastle.util.d.c(27), new r(40, 2, uVar4));
        map.put(org.bouncycastle.util.d.c(28), new r(40, 4, uVar4));
        map.put(org.bouncycastle.util.d.c(29), new r(40, 8, uVar4));
        map.put(org.bouncycastle.util.d.c(30), new r(60, 3, uVar4));
        map.put(org.bouncycastle.util.d.c(31), new r(60, 6, uVar4));
        map.put(org.bouncycastle.util.d.c(32), new r(60, 12, uVar4));
        paramsLookupTable = Collections.unmodifiableMap(map);
    }

    public r(int i10, int i11, org.bouncycastle.asn1.u uVar) {
        this.height = i10;
        this.layers = i11;
        this.xmssParams = new x(j(i10, i11), uVar);
        this.oid = d.c(e(), f(), g(), c(), a(), i11);
    }

    public static r i(int i10) {
        return paramsLookupTable.get(org.bouncycastle.util.d.c(i10));
    }

    private static int j(int i10, int i11) throws IllegalArgumentException {
        if (i10 < 2) {
            throw new IllegalArgumentException("totalHeight must be > 1");
        }
        if (i10 % i11 != 0) {
            throw new IllegalArgumentException("layers must divide totalHeight without remainder");
        }
        int i12 = i10 / i11;
        if (i12 != 1) {
            return i12;
        }
        throw new IllegalArgumentException("height / layers must be greater than 1");
    }

    public int a() {
        return this.height;
    }

    public int b() {
        return this.layers;
    }

    protected int c() {
        return this.xmssParams.d();
    }

    protected w d() {
        return this.oid;
    }

    protected String e() {
        return this.xmssParams.f();
    }

    public int f() {
        return this.xmssParams.h();
    }

    int g() {
        return this.xmssParams.j();
    }

    protected x h() {
        return this.xmssParams;
    }

    public r(int i10, int i11, x8.c cVar) {
        this(i10, i11, f.c(cVar.d()));
    }
}
