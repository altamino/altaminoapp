package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import javax.annotation.Nullable;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Ex, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0533Ex extends AbstractC0528Es<HashMap<String, Integer>> {
    private static byte[] A00;

    static {
        A01();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 66);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A00 = new byte[]{-60};
    }

    public C0533Ex(long j, @Nullable F8 f8, HashMap<String, Integer> map) {
        super(j, f8, map, F9.A07);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0528Es
    public final int A06() {
        Set<String> keys = A07().keySet();
        int i = 0;
        Iterator<String> it = keys.iterator();
        int keySize = 2;
        while (true) {
            switch (keySize) {
                case 2:
                    it = it;
                    if (!it.hasNext()) {
                        keySize = 4;
                        break;
                    } else {
                        keySize = 3;
                        break;
                    }
                case 3:
                    it = it;
                    int keySize2 = it.next().getBytes().length;
                    i += keySize2;
                    keySize = 2;
                    break;
                case 4:
                    int keySize3 = A07().size();
                    return (keySize3 * 4) + i;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0528Es
    public final JSONObject A09(JSONObject jSONObject) throws JSONException {
        HashMap<String, Integer> mapA07 = A07();
        Set<String> keys = mapA07.keySet();
        JSONObject jSONObject2 = new JSONObject();
        Iterator<String> it = keys.iterator();
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    it = it;
                    if (!it.hasNext()) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    mapA07 = mapA07;
                    jSONObject2 = jSONObject2;
                    it = it;
                    String next = it.next();
                    jSONObject2.put(next, mapA07.get(next));
                    c = 2;
                    break;
                case 4:
                    JSONObject jSONObject3 = jSONObject;
                    jSONObject3.put(A00(0, 1, 12), jSONObject2);
                    return jSONObject3;
            }
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Es != com.facebook.ads.internal.botdetection.signals.model.signal_value.SignalValueTypeDef<java.util.HashMap<java.lang.String, java.lang.Integer>> */
    @Override // com.facebook.ads.redexgen.X.AbstractC0528Es
    @SuppressLint({"Nullable Dereference"})
    public final boolean A0A(AbstractC0528Es<HashMap<String, Integer>> abstractC0528Es) {
        C0533Ex c0533Ex = this;
        Iterator<String> newSignalValueKeys = null;
        boolean z = false;
        Iterator<String> it = null;
        HashMap<String, Integer> mapA07 = null;
        String next = null;
        HashMap<String, Integer> mapA072 = null;
        String next2 = null;
        boolean z2 = false;
        char c = c0533Ex.A07() != null ? (char) 2 : (char) 3;
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
                    c0533Ex = c0533Ex;
                    if (c0533Ex.A07() != null) {
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
                    z = true;
                    c = 6;
                    break;
                case 6:
                    z2 = z;
                    c = 7;
                    break;
                case 7:
                    return z2;
                case '\b':
                    z2 = false;
                    z = false;
                    c = 6;
                    break;
                case '\t':
                    c0533Ex = c0533Ex;
                    abstractC0528Es = abstractC0528Es;
                    if (c0533Ex.A07().size() != abstractC0528Es.A07().size()) {
                        c = 7;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    c0533Ex = c0533Ex;
                    abstractC0528Es = abstractC0528Es;
                    mapA07 = abstractC0528Es.A07();
                    mapA072 = c0533Ex.A07();
                    it = mapA07.keySet().iterator();
                    newSignalValueKeys = mapA072.keySet().iterator();
                    c = 11;
                    break;
                case 11:
                    it = it;
                    if (!it.hasNext()) {
                        c = 17;
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    newSignalValueKeys = newSignalValueKeys;
                    if (!newSignalValueKeys.hasNext()) {
                        c = 17;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\r':
                    it = it;
                    newSignalValueKeys = newSignalValueKeys;
                    next = it.next();
                    next2 = newSignalValueKeys.next();
                    if (!next.equals(next2)) {
                        c = 7;
                        break;
                    } else {
                        c = 14;
                        break;
                    }
                case 14:
                    mapA07 = mapA07;
                    next = next;
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
                    next = next;
                    next2 = next2;
                    if (!mapA07.get(next).equals(mapA072.get(next2))) {
                        c = 7;
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 17:
                    z2 = true;
                    c = 7;
                    break;
            }
        }
    }
}
