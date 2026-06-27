package com.facebook.ads.redexgen.X;

import android.support.annotation.Nullable;
import com.facebook.ads.RewardData;
import java.io.Serializable;
import java.util.Arrays;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.2m, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public abstract class AbstractC02162m implements Serializable {
    private static byte[] A04 = null;
    private static final long serialVersionUID = -5352540727250859603L;
    private int A00 = 200;
    private RewardData A01;

    @Nullable
    private String A02;
    private String A03;

    static {
        A02();
    }

    private static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 4);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A04 = new byte[]{77, 70, 65, 65, 93, 79, 76, 66, 75, 113, 79, 74, 93};
    }

    public abstract int A0A();

    public abstract int A0B();

    public abstract String A0C();

    @Nullable
    public abstract String A0D();

    public static AbstractC02162m A00(JSONObject jSONObject) {
        AbstractC02162m abstractC02162mA01 = null;
        char c = jSONObject.has(A01(0, 13, 42)) ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    jSONObject = jSONObject;
                    abstractC02162mA01 = C02262w.A01(jSONObject);
                    c = 3;
                    break;
                case 3:
                    return abstractC02162mA01;
                case 4:
                    jSONObject = jSONObject;
                    abstractC02162mA01 = C3D.A01(jSONObject);
                    c = 3;
                    break;
            }
        }
    }

    public final int A03() {
        return this.A00;
    }

    @Nullable
    public final RewardData A04() {
        return this.A01;
    }

    @Nullable
    public final String A05() {
        return this.A02;
    }

    public final String A06() {
        return this.A03;
    }

    public final void A07(int i) {
        this.A00 = i;
    }

    public final void A08(RewardData rewardData) {
        this.A01 = rewardData;
    }

    public void A09(@Nullable String str) {
        this.A02 = str;
    }

    public void A0E(String str) {
        this.A03 = str;
    }
}
