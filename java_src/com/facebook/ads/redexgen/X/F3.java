package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
@SuppressLint({"POSSIBLE_VARIABLE_NAME_TYPO"})
/* loaded from: assets/assets/audience_network.dex */
public final class F3<K, V> extends AbstractC0528Es<HashMap<K, CG>> {
    private static byte[] A02;
    private final F9 A00;
    private final HashMap<K, CG> A01;

    static {
        A02();
    }

    private static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        int i4 = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    bArrCopyOfRange = bArrCopyOfRange;
                    if (i4 >= bArrCopyOfRange.length) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    bArrCopyOfRange = bArrCopyOfRange;
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 86);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A02 = new byte[]{73};
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.F3 != com.facebook.ads.internal.botdetection.signals.model.signal_value.MapSignalValueType<K, V> */
    public F3(long j, @Nullable F8 f8, HashMap<K, CG> map, F9 f9) {
        super(j, f8, map, F9.A0A);
        this.A01 = map;
        this.A00 = f9;
        if (!A03()) {
            throw new UnsupportedOperationException();
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.F3 != com.facebook.ads.internal.botdetection.signals.model.signal_value.MapSignalValueType<K, V> */
    /* JADX WARN: Multi-variable type inference failed */
    @SuppressLint({"BadMethodUse-java.lang.String.length"})
    private int A00(K k) {
        char c;
        int length = 0;
        switch (F2.A00[this.A00.ordinal()]) {
            case 1:
                c = 3;
                break;
            case 2:
                c = 4;
                break;
            default:
                c = 2;
                break;
        }
        while (true) {
            switch (c) {
                case 2:
                    throw new UnsupportedOperationException();
                case 3:
                    length = 4;
                    c = 5;
                    break;
                case 4:
                    k = k;
                    length = ((String) k).length();
                    c = 5;
                    break;
                case 5:
                    return length;
            }
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.F3 != com.facebook.ads.internal.botdetection.signals.model.signal_value.MapSignalValueType<K, V> */
    private boolean A03() {
        char c;
        boolean z = false;
        switch (F2.A00[this.A00.ordinal()]) {
            case 1:
                c = 4;
                break;
            case 2:
                c = 4;
                break;
            default:
                c = 2;
                break;
        }
        while (true) {
            switch (c) {
                case 2:
                    z = false;
                    c = 3;
                    break;
                case 3:
                    return z;
                case 4:
                    z = true;
                    c = 3;
                    break;
            }
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.F3 != com.facebook.ads.internal.botdetection.signals.model.signal_value.MapSignalValueType<K, V> */
    @Override // com.facebook.ads.redexgen.X.AbstractC0528Es
    public final int A06() {
        F3 f3 = this;
        Iterator<Map.Entry<K, V>> it = null;
        int size = 0;
        int iA00 = 0;
        int size2 = f3.A07() != null ? 2 : 3;
        while (true) {
            switch (size2) {
                case 2:
                    f3 = f3;
                    if (!f3.A07().isEmpty()) {
                        size2 = 5;
                        break;
                    } else {
                        size2 = 3;
                        break;
                    }
                case 3:
                    iA00 = 0;
                    size = 0;
                    size2 = 4;
                    break;
                case 4:
                    return size;
                case 5:
                    f3 = f3;
                    it = ((HashMap) f3.A07()).entrySet().iterator();
                    size2 = 6;
                    break;
                case 6:
                    it = it;
                    if (!it.hasNext()) {
                        size2 = 8;
                        break;
                    } else {
                        size2 = 7;
                        break;
                    }
                case 7:
                    f3 = f3;
                    it = it;
                    Map.Entry<K, V> next = it.next();
                    iA00 = iA00 + f3.A00(next.getKey()) + ((CG) next.getValue()).A76();
                    size2 = 6;
                    break;
                case 8:
                    size = iA00;
                    size2 = 4;
                    break;
            }
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.F3 != com.facebook.ads.internal.botdetection.signals.model.signal_value.MapSignalValueType<K, V> */
    @Override // com.facebook.ads.redexgen.X.AbstractC0528Es
    public final JSONObject A09(JSONObject jSONObject) throws JSONException {
        F3<K, V> f3 = this;
        CG cg = null;
        K next = null;
        Set<K> setKeySet = f3.A01.keySet();
        JSONObject jSONObject2 = new JSONObject();
        Iterator<K> it = setKeySet.iterator();
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    it = it;
                    if (!it.hasNext()) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    f3 = f3;
                    it = it;
                    next = it.next();
                    cg = f3.A01.get(next);
                    if (cg == null) {
                        c = 2;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    jSONObject2 = jSONObject2;
                    next = (K) next;
                    cg = cg;
                    cg.A7A(next, jSONObject2);
                    c = 2;
                    break;
                case 5:
                    JSONObject jSONObject3 = jSONObject;
                    jSONObject3.put(A01(0, 1, 125), jSONObject2);
                    return jSONObject3;
            }
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Es != com.facebook.ads.internal.botdetection.signals.model.signal_value.SignalValueTypeDef<java.util.HashMap<K, com.facebook.ads.internal.botdetection.signals.model.signal_value.IMapSignalValueDef>> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.F3 != com.facebook.ads.internal.botdetection.signals.model.signal_value.MapSignalValueType<K, V> */
    @Override // com.facebook.ads.redexgen.X.AbstractC0528Es
    @SuppressLint({"Nullable Dereference"})
    public final boolean A0A(AbstractC0528Es<HashMap<K, CG>> abstractC0528Es) {
        F3<K, V> f3 = this;
        Iterator<K> it = null;
        boolean z = false;
        CG cg = null;
        K next = null;
        Iterator<K> it2 = null;
        HashMap<K, CG> mapA07 = null;
        HashMap<K, CG> mapA072 = null;
        Object next2 = null;
        CG cg2 = null;
        boolean z2 = true;
        boolean z3 = false;
        char c = f3.A07() != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    abstractC0528Es = abstractC0528Es;
                    if (abstractC0528Es.A07() != null) {
                        c = '\t';
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    f3 = f3;
                    if (f3.A07() != null) {
                        c = '\b';
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    abstractC0528Es = abstractC0528Es;
                    if (abstractC0528Es.A07() != null) {
                        c = '\b';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    z = z2;
                    c = 6;
                    break;
                case 6:
                    z3 = z;
                    c = 7;
                    break;
                case 7:
                    return z3;
                case '\b':
                    z3 = false;
                    z = false;
                    c = 6;
                    break;
                case '\t':
                    f3 = f3;
                    abstractC0528Es = abstractC0528Es;
                    if (abstractC0528Es.A07().size() != f3.A07().size()) {
                        c = 7;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    f3 = f3;
                    abstractC0528Es = abstractC0528Es;
                    mapA07 = abstractC0528Es.A07();
                    mapA072 = f3.A07();
                    it2 = mapA07.keySet().iterator();
                    it = mapA072.keySet().iterator();
                    c = 11;
                    break;
                case 11:
                    it2 = it2;
                    if (!it2.hasNext()) {
                        c = 23;
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    it = it;
                    if (!it.hasNext()) {
                        c = 23;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\r':
                    it2 = it2;
                    it = it;
                    next = it2.next();
                    next2 = it.next();
                    if (!next.equals(next2)) {
                        c = 7;
                        break;
                    } else {
                        c = 14;
                        break;
                    }
                case 14:
                    mapA07 = mapA07;
                    next = (K) next;
                    if (!mapA07.containsKey(next)) {
                        c = 7;
                        break;
                    } else {
                        c = 15;
                        break;
                    }
                case 15:
                    mapA072 = mapA072;
                    next2 = next2;
                    if (!mapA072.containsKey(next2)) {
                        c = 7;
                        break;
                    } else {
                        c = 16;
                        break;
                    }
                case 16:
                    mapA07 = mapA07;
                    mapA072 = mapA072;
                    next = (K) next;
                    next2 = next2;
                    cg = mapA07.get(next);
                    cg2 = mapA072.get(next2);
                    if (cg == null) {
                        c = 18;
                        break;
                    } else {
                        c = 17;
                        break;
                    }
                case 17:
                    cg2 = cg2;
                    if (cg2 != null) {
                        c = 22;
                        break;
                    } else {
                        c = 18;
                        break;
                    }
                case 18:
                    cg = cg;
                    if (cg != null) {
                        c = 21;
                        break;
                    } else {
                        c = 19;
                        break;
                    }
                case 19:
                    cg2 = cg2;
                    if (cg2 != null) {
                        c = 21;
                        break;
                    } else {
                        c = 20;
                        break;
                    }
                case 20:
                    z3 = z2;
                    c = 7;
                    break;
                case 21:
                    z3 = false;
                    z2 = false;
                    c = 20;
                    break;
                case 22:
                    cg = cg;
                    cg2 = cg2;
                    if (!cg.A3v(cg2)) {
                        c = 7;
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 23:
                    z3 = z2;
                    c = 7;
                    break;
            }
        }
    }
}
