package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import javax.annotation.Nullable;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Ev, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0531Ev extends AbstractC0528Es<F7> {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 103);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A00 = new byte[]{65};
    }

    public C0531Ev(long j, @Nullable F8 f8, F7 f7) {
        super(j, f8, f7, F9.A04);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0528Es
    public final int A06() {
        return A07().A03();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0528Es
    public final JSONObject A09(JSONObject jSONObject) throws JSONException {
        jSONObject.put(A00(0, 1, 80), A07().A08());
        return jSONObject;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Es != com.facebook.ads.internal.botdetection.signals.model.signal_value.SignalValueTypeDef<com.facebook.ads.internal.botdetection.signals.model.signal_value.SignalErrorValueTypeDef> */
    @Override // com.facebook.ads.redexgen.X.AbstractC0528Es
    public final boolean A0A(AbstractC0528Es<F7> abstractC0528Es) {
        boolean z = false;
        boolean z2 = false;
        F7 f7A07 = A07();
        F7 f7A072 = abstractC0528Es.A07();
        F6 f6A04 = f7A07.A04();
        F7 oldSignalErrorValue = abstractC0528Es.A07();
        char c = f6A04.equals(oldSignalErrorValue.A04()) ? (char) 2 : (char) 16;
        while (true) {
            switch (c) {
                case 2:
                    f7A07 = f7A07;
                    f7A072 = f7A072;
                    if (f7A07.A02() != f7A072.A02()) {
                        c = 16;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    z = true;
                    c = 4;
                    break;
                case 4:
                    if (!z) {
                        c = 14;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    f7A07 = f7A07;
                    if (!f7A07.A04().equals(F6.A06)) {
                        c = 14;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    f7A07 = f7A07;
                    if (f7A07.A06() == null) {
                        c = 15;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    f7A07 = f7A07;
                    f7A072 = f7A072;
                    if (!f7A07.A06().equals(f7A072.A06())) {
                        c = 15;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    f7A07 = f7A07;
                    if (f7A07.A05() == null) {
                        c = 15;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    f7A07 = f7A07;
                    f7A072 = f7A072;
                    if (!f7A07.A05().equals(f7A072.A05())) {
                        c = 15;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    f7A07 = f7A07;
                    if (f7A07.A07() == null) {
                        c = 15;
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    f7A07 = f7A07;
                    f7A072 = f7A072;
                    if (!f7A07.A07().equals(f7A072.A07())) {
                        c = 15;
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    z2 = true;
                    c = '\r';
                    break;
                case '\r':
                    z &= z2;
                    c = 14;
                    break;
                case 14:
                    return z;
                case 15:
                    z2 = false;
                    c = '\r';
                    break;
                case 16:
                    z = false;
                    c = 4;
                    break;
            }
        }
    }
}
