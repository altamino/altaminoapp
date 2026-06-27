package com.facebook.ads.redexgen.X;

import android.support.annotation.Nullable;
import io.agora.rtc.Constants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.0j, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C01650j implements InterfaceC01670l {
    private static byte[] A05;

    @Nullable
    private JSONObject A00;

    @Nullable
    private JSONObject A01;
    private final EnumC01660k A03;
    private final List<AG> A04 = new ArrayList();
    private boolean A02 = false;

    static {
        A03();
    }

    private static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 117);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A03() {
        A05 = new byte[]{113, 70, 93, 87, 95, 86, 19, 22, 64, 19, 87, 82, 71, 82, 19, 70, 67, 87, 82, 71, 86, 9, 57, 25, 25, 19, 87, 82, 71, 82, 19, 25, 25, 57, 22, 64, 57, 25, 25, 19, 85, 90, 93, 84, 86, 65, 67, 65, 90, 93, 71, 19, 25, 25, 57, 22, 64, 115, 118, 99, 118, 55, 42, 42, 55, 121, 98, 123, 123, 125, 74, 81, 91, 83, 90, 31, 87, 94, 76, 31, 81, 80, 31, 89, 86, 81, 88, 90, 77, 79, 77, 86, 81, 75, 110, 97, 102, 111, 109, 122, 120, 122, 97, 102, 124, 40, 41, 53, 40, 102, 125, 100, 100, 86, 97, 122, 112, 120, 113, 52, 125, 103, 52, 122, 123, 96, 52, 102, 113, 117, 112, 109, 97, 110, 105, 96, 98, 117, 119, 117, 110, 105, 115, 39, 58, 58, 39, 105, 114, 107, 107, 25, 2, 27, 27};
    }

    public C01650j(EnumC01660k enumC01660k) {
        this.A03 = enumC01660k;
    }

    private boolean A04(@Nullable JSONObject jSONObject, @Nullable JSONObject jSONObject2) {
        boolean z = true;
        char c = jSONObject == null ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    jSONObject2 = jSONObject2;
                    if (jSONObject2 != null) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    z = false;
                    c = 4;
                    break;
                case 4:
                    return z;
                case 5:
                    jSONObject = jSONObject;
                    if (jSONObject == null) {
                        c = 4;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    jSONObject2 = jSONObject2;
                    if (jSONObject2 == null) {
                        c = 4;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    jSONObject = jSONObject;
                    jSONObject2 = jSONObject2;
                    if (!C01680m.A02(jSONObject, jSONObject2)) {
                        c = 4;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    z = false;
                    c = 4;
                    break;
            }
        }
    }

    public final synchronized boolean A05(JSONObject jSONObject, @Nullable JSONObject jSONObject2) {
        boolean z = false;
        synchronized (this) {
            if (jSONObject == null) {
                throw new IllegalArgumentException(A02(57, 12, 98));
            }
            if (jSONObject2 == null && this.A03.A04()) {
                throw new IllegalArgumentException(A02(132, 19, 114));
            }
            if (jSONObject2 != null && !this.A03.A04()) {
                throw new IllegalArgumentException(A02(94, 19, 125));
            }
            if (A04(this.A00, jSONObject) || A04(this.A01, jSONObject2)) {
                this.A00 = jSONObject;
                this.A01 = jSONObject2;
                this.A02 = true;
                Iterator<AG> it = this.A04.iterator();
                while (it.hasNext()) {
                    it.next().A2h();
                }
                try {
                    Locale locale = Locale.US;
                    String strA02 = A02(0, 57, 70);
                    Object[] objArr = new Object[3];
                    objArr[0] = this.A03;
                    objArr[1] = this.A00 == null ? A02(Constants.ERR_PUBLISH_STREAM_CDN_ERROR, 4, 2) : this.A00.toString(2);
                    objArr[2] = this.A01 == null ? A02(Constants.ERR_PUBLISH_STREAM_CDN_ERROR, 4, 2) : this.A01.toString(2);
                    String.format(locale, strA02, objArr);
                } catch (JSONException unused) {
                }
                z = true;
            }
        }
        return z;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC01670l
    public final synchronized void A2W(AG ag) {
        this.A04.add(ag);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC01670l
    public final synchronized JSONObject A3Q() {
        if (this.A00 == null) {
            throw new IllegalStateException(A02(113, 19, 97));
        }
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC01670l
    public final synchronized JSONObject A3W() {
        if (!this.A03.A04()) {
            throw new IllegalStateException(A02(69, 25, 74));
        }
        if (this.A01 == null) {
            throw new IllegalStateException(A02(113, 19, 97));
        }
        return this.A01;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC01670l
    public final EnumC01660k A3Y() {
        return this.A03;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC01670l
    public final synchronized boolean A40() {
        return this.A02;
    }
}
