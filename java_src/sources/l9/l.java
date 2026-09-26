package l9;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
final class l implements w {
    private static final Map<String, l> oidLookupTable;
    private final int oid;
    private final String stringRepresentation;

    static {
        HashMap map = new HashMap();
        map.put(b(p.SHA_256, 32, 16, 67), new l(16777217, "WOTSP_SHA2-256_W16"));
        map.put(b(p.SHA_512, 64, 16, 131), new l(33554434, "WOTSP_SHA2-512_W16"));
        map.put(b(p.SHAKE128, 32, 16, 67), new l(50331651, "WOTSP_SHAKE128_W16"));
        map.put(b(p.SHAKE256, 64, 16, 131), new l(67108868, "WOTSP_SHAKE256_W16"));
        oidLookupTable = Collections.unmodifiableMap(map);
    }

    private l(int i10, String str) {
        this.oid = i10;
        this.stringRepresentation = str;
    }

    private static String b(String str, int i10, int i11, int i12) {
        if (str == null) {
            throw new NullPointerException("algorithmName == null");
        }
        return str + "-" + i10 + "-" + i11 + "-" + i12;
    }

    protected static l c(String str, int i10, int i11, int i12) {
        if (str != null) {
            return oidLookupTable.get(b(str, i10, i11, i12));
        }
        throw new NullPointerException("algorithmName == null");
    }

    @Override // l9.w
    public int a() {
        return this.oid;
    }

    public String toString() {
        return this.stringRepresentation;
    }
}
