package com.facebook.ads.redexgen.X;

import android.support.annotation.Nullable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class AI implements AD {
    private static byte[] A03;
    private final InterfaceC01670l A01;
    private Set<AJ> A00 = new HashSet();
    private final List<A7> A02 = new ArrayList();

    static {
        A02();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 54);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A03 = new byte[]{66, 80, 80, 70, 87, 80, 78, 78, 75, 29, 84, 78, 75, 29};
    }

    public AI(C0T c0t) {
        this.A01 = c0t.A2v(EnumC01660k.A09);
        this.A01.A2W(new AH(this));
        A03();
    }

    @Nullable
    private static Set<AJ> A01(JSONObject jSONObject) {
        int i = 0;
        JSONObject jSONObjectOptJSONObject = null;
        AK akA00 = null;
        HashSet hashSet = new HashSet();
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(A00(0, 6, 21));
        char c = jSONArrayOptJSONArray == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    hashSet = null;
                    c = 3;
                    break;
                case 3:
                    return hashSet;
                case 4:
                    i = 0;
                    c = 5;
                    break;
                case 5:
                    jSONArrayOptJSONArray = jSONArrayOptJSONArray;
                    if (i >= jSONArrayOptJSONArray.length()) {
                        c = 3;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    jSONArrayOptJSONArray = jSONArrayOptJSONArray;
                    jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
                    if (jSONObjectOptJSONObject != null) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    hashSet = null;
                    c = 3;
                    break;
                case '\b':
                    jSONObjectOptJSONObject = jSONObjectOptJSONObject;
                    akA00 = AK.A00(jSONObjectOptJSONObject);
                    if (akA00 != null) {
                        c = '\n';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    hashSet = null;
                    c = 3;
                    break;
                case '\n':
                    hashSet = hashSet;
                    akA00 = akA00;
                    hashSet.add(akA00);
                    i++;
                    c = 5;
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void A03() {
        if (this.A01.A40()) {
            Set<AJ> setA01 = A01(this.A01.A3Q());
            if (!this.A00.equals(setA01) && setA01 != null) {
                this.A00 = setA01;
                for (A7 listener : this.A02) {
                    listener.A2d();
                }
            }
            for (AJ aj : this.A00) {
                String.format(Locale.US, A00(6, 8, 88), aj.A3n(), aj.getUrl());
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AD
    public final void A2V(A7 a7) {
        this.A02.add(a7);
    }

    @Override // com.facebook.ads.redexgen.X.AD
    public final synchronized Set<AJ> A3D() {
        return new HashSet(this.A00);
    }
}
