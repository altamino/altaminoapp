package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class CO implements CG<Integer> {
    private static byte[] A03;
    private final int A00;
    private final int A01;
    private final int A02;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 47);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A03 = new byte[]{-73, -55, 19, 7, 13, 9};
    }

    public CO(int i, int i2, int i3) {
        this.A02 = i;
        this.A00 = i2;
        this.A01 = i3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.CG
    /* renamed from: A01, reason: merged with bridge method [inline-methods] */
    public final JSONObject A7A(Integer num, JSONObject jSONObject) throws JSONException {
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put(A00(4, 2, 113), this.A02);
        jSONObject2.put(A00(0, 2, 37), this.A00);
        jSONObject2.put(A00(2, 2, 119), this.A01);
        jSONObject.put(num.toString(), jSONObject2);
        return jSONObject;
    }

    @Override // com.facebook.ads.redexgen.X.CG
    public final boolean A3v(Object obj) {
        CO newAudioStreamVolume = this;
        boolean z = false;
        CO co = (CO) obj;
        char c = newAudioStreamVolume.A01 == co.A01 ? (char) 2 : (char) 6;
        while (true) {
            switch (c) {
                case 2:
                    newAudioStreamVolume = newAudioStreamVolume;
                    co = co;
                    if (newAudioStreamVolume.A00 != co.A00) {
                        c = 6;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    newAudioStreamVolume = newAudioStreamVolume;
                    co = co;
                    if (newAudioStreamVolume.A02 != co.A02) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    z = true;
                    c = 5;
                    break;
                case 5:
                    return z;
                case 6:
                    z = false;
                    c = 5;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.CG
    public final int A76() {
        return A00(4, 2, 113).getBytes().length + A00(0, 2, 37).getBytes().length + A00(2, 2, 119).getBytes().length + 12;
    }
}
