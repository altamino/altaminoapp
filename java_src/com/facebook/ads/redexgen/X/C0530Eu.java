package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import javax.annotation.Nullable;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Eu, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0530Eu<T> extends AbstractC0528Es<InterfaceC0466Ci> {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 96);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A00 = new byte[]{-24};
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Eu != com.facebook.ads.internal.botdetection.signals.model.signal_value.CustomObjectSignalValueType<T> */
    public C0530Eu(long j, @Nullable F8 f8, InterfaceC0466Ci interfaceC0466Ci) {
        super(j, f8, interfaceC0466Ci, F9.A03);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Eu != com.facebook.ads.internal.botdetection.signals.model.signal_value.CustomObjectSignalValueType<T> */
    @Override // com.facebook.ads.redexgen.X.AbstractC0528Es
    public final int A06() {
        return ((InterfaceC0466Ci) A07()).A76();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Eu != com.facebook.ads.internal.botdetection.signals.model.signal_value.CustomObjectSignalValueType<T> */
    @Override // com.facebook.ads.redexgen.X.AbstractC0528Es
    public final JSONObject A09(JSONObject jSONObject) throws JSONException {
        return jSONObject.put(A00(0, 1, 18), ((InterfaceC0466Ci) A07()).A79());
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Es != com.facebook.ads.internal.botdetection.signals.model.signal_value.SignalValueTypeDef<com.facebook.ads.internal.botdetection.signals.model.signal_value.ICustomObjectSignalValueDef> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Eu != com.facebook.ads.internal.botdetection.signals.model.signal_value.CustomObjectSignalValueType<T> */
    @Override // com.facebook.ads.redexgen.X.AbstractC0528Es
    public final boolean A0A(AbstractC0528Es<InterfaceC0466Ci> abstractC0528Es) {
        C0530Eu<T> c0530Eu = this;
        boolean zA3v = false;
        char c = c0530Eu.A07() != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    abstractC0528Es = abstractC0528Es;
                    if (abstractC0528Es.A07() != null) {
                        c = '\b';
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c0530Eu = c0530Eu;
                    if (c0530Eu.A07() != null) {
                        c = 7;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    abstractC0528Es = abstractC0528Es;
                    if (abstractC0528Es.A07() != null) {
                        c = 7;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    zA3v = true;
                    c = 6;
                    break;
                case 6:
                    return zA3v;
                case 7:
                    zA3v = false;
                    c = 6;
                    break;
                case '\b':
                    c0530Eu = c0530Eu;
                    abstractC0528Es = abstractC0528Es;
                    zA3v = ((InterfaceC0466Ci) c0530Eu.A07()).A3v(abstractC0528Es.A07());
                    c = 6;
                    break;
            }
        }
    }
}
