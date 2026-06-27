package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import javax.annotation.Nullable;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class F1 extends AbstractC0528Es<Long> {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 22);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A00 = new byte[]{-94};
    }

    public F1(long j, @Nullable F8 f8, long j2) {
        super(j, f8, Long.valueOf(j2), F9.A09);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0528Es
    public final int A06() {
        return 8;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0528Es
    public final JSONObject A09(JSONObject jSONObject) throws JSONException {
        jSONObject.put(A00(0, 1, 22), A07());
        return jSONObject;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Es != com.facebook.ads.internal.botdetection.signals.model.signal_value.SignalValueTypeDef<java.lang.Long> */
    @Override // com.facebook.ads.redexgen.X.AbstractC0528Es
    public final boolean A0A(AbstractC0528Es<Long> abstractC0528Es) {
        return A07().equals(abstractC0528Es.A07());
    }
}
