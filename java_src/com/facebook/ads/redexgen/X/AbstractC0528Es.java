package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import java.util.Arrays;
import java.util.EnumSet;
import javax.annotation.Nullable;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Es, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public abstract class AbstractC0528Es<T> {
    private static byte[] A04;
    private static final String A05;
    private final long A00;

    @Nullable
    private final F8 A01;
    private final F9 A02;
    private final T A03;

    private static String A03(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 115);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A04() {
        A04 = new byte[]{6, 70, 28, 11, 7};
    }

    public abstract int A06() throws Exception;

    public abstract JSONObject A09(JSONObject jSONObject) throws JSONException;

    public abstract boolean A0A(AbstractC0528Es<T> abstractC0528Es);

    static {
        A04();
        A05 = AbstractC0528Es.class.getSimpleName();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Es != com.facebook.ads.internal.botdetection.signals.model.signal_value.SignalValueTypeDef<T> */
    public AbstractC0528Es(long j, @Nullable F8 f8, T t, F9 f9) {
        this.A00 = j;
        this.A01 = f8;
        this.A03 = t;
        this.A02 = f9;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Es != com.facebook.ads.internal.botdetection.signals.model.signal_value.SignalValueTypeDef<T> */
    private final long A00() {
        return this.A00;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Es != com.facebook.ads.internal.botdetection.signals.model.signal_value.SignalValueTypeDef<T> */
    @Nullable
    private final F8 A01() {
        return this.A01;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Es != com.facebook.ads.internal.botdetection.signals.model.signal_value.SignalValueTypeDef<T> */
    private final F9 A02() {
        return this.A02;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Es != com.facebook.ads.internal.botdetection.signals.model.signal_value.SignalValueTypeDef<T> */
    @SuppressLint({"CatchGeneralException"})
    public final int A05() {
        AbstractC0528Es<T> abstractC0528Es = this;
        int sizeOfIdAndContext = 0;
        int iA06 = 0;
        char c = abstractC0528Es.A01() != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    abstractC0528Es = abstractC0528Es;
                    sizeOfIdAndContext = abstractC0528Es.A01().A02().getBytes().length;
                    c = 3;
                    break;
                case 3:
                    iA06 = sizeOfIdAndContext + 8;
                    c = 5;
                    break;
                case 4:
                    sizeOfIdAndContext = 0;
                    c = 3;
                    break;
                case 5:
                    try {
                        abstractC0528Es = abstractC0528Es;
                        iA06 += abstractC0528Es.A06();
                        c = '\b';
                        break;
                    } catch (Exception e) {
                        BC.A03(e);
                        c = '\b';
                        break;
                    }
                case '\b':
                    return iA06;
            }
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Es != com.facebook.ads.internal.botdetection.signals.model.signal_value.SignalValueTypeDef<T> */
    public final T A07() {
        return this.A03;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Es != com.facebook.ads.internal.botdetection.signals.model.signal_value.SignalValueTypeDef<T> */
    @SuppressLint({"BadMethodUse-android.util.Log.e", "CatchGeneralException"})
    public final JSONObject A08() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(A03(0, 1, 1), this.A00 / 1000.0f);
            if (this.A01 != null) {
                jSONObject.put(A03(2, 3, 12), this.A01.A03());
            }
            if (this.A02 != F9.A04 && A07() != null) {
                A09(jSONObject);
            } else if (this.A02 == F9.A04) {
                jSONObject.put(A03(1, 1, 80), ((F7) this.A03).A08());
            } else if (this.A03 == null) {
                jSONObject.put(A03(1, 1, 80), new F7(F6.A05).A08());
            }
        } catch (Throwable th) {
            BC.A03(th);
        }
        return jSONObject;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Es != com.facebook.ads.internal.botdetection.signals.model.signal_value.SignalValueTypeDef<T> */
    public final boolean A0B(@Nullable AbstractC0528Es<T> abstractC0528Es, EnumSet<EnumC0525Ep> enumSet) {
        AbstractC0528Es<T> abstractC0528Es2 = this;
        boolean zA0A = false;
        boolean z = false;
        long jA08 = 0;
        boolean z2 = true;
        boolean zA0A2 = false;
        char c = abstractC0528Es == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return zA0A2;
                case 3:
                    abstractC0528Es2 = abstractC0528Es2;
                    abstractC0528Es = abstractC0528Es;
                    if (abstractC0528Es2.A02() != abstractC0528Es.A02()) {
                        c = 2;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    abstractC0528Es2 = abstractC0528Es2;
                    if (abstractC0528Es2.A02() != F9.A04) {
                        c = 7;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    abstractC0528Es = abstractC0528Es;
                    if (abstractC0528Es.A02() != F9.A04) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    abstractC0528Es2 = abstractC0528Es2;
                    abstractC0528Es = abstractC0528Es;
                    zA0A2 = abstractC0528Es2.A0A(abstractC0528Es);
                    c = 2;
                    break;
                case 7:
                    enumSet = enumSet;
                    zA0A = false;
                    if (!enumSet.contains(EnumC0525Ep.A0D)) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    abstractC0528Es2 = abstractC0528Es2;
                    abstractC0528Es = abstractC0528Es;
                    zA0A = abstractC0528Es2.A0A(abstractC0528Es);
                    c = '\t';
                    break;
                case '\t':
                    enumSet = enumSet;
                    if (!enumSet.contains(EnumC0525Ep.A0B)) {
                        c = 15;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    abstractC0528Es2 = abstractC0528Es2;
                    if (abstractC0528Es2.A01() == null) {
                        c = 24;
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    abstractC0528Es = abstractC0528Es;
                    if (abstractC0528Es.A01() == null) {
                        c = 24;
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    abstractC0528Es2 = abstractC0528Es2;
                    abstractC0528Es = abstractC0528Es;
                    if (!abstractC0528Es2.A01().A02().equals(abstractC0528Es.A01().A02())) {
                        c = 24;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\r':
                    z = z2;
                    c = 14;
                    break;
                case 14:
                    zA0A &= z;
                    c = 15;
                    break;
                case 15:
                    enumSet = enumSet;
                    if (!enumSet.contains(EnumC0525Ep.A0C)) {
                        c = 21;
                        break;
                    } else {
                        c = 16;
                        break;
                    }
                case 16:
                    abstractC0528Es2 = abstractC0528Es2;
                    if (abstractC0528Es2.A02() == F9.A0D) {
                        c = 18;
                        break;
                    } else {
                        c = 17;
                        break;
                    }
                case 17:
                    abstractC0528Es2 = abstractC0528Es2;
                    if (abstractC0528Es2.A02() != F9.A0B) {
                        c = 23;
                        break;
                    } else {
                        c = 18;
                        break;
                    }
                case 18:
                    jA08 = C0430Ay.A08();
                    c = 19;
                    break;
                case 19:
                    abstractC0528Es2 = abstractC0528Es2;
                    abstractC0528Es = abstractC0528Es;
                    if (Math.abs(abstractC0528Es2.A00 - abstractC0528Es.A00()) >= jA08) {
                        c = 22;
                        break;
                    } else {
                        c = 20;
                        break;
                    }
                case 20:
                    zA0A &= z2;
                    c = 21;
                    break;
                case 21:
                    zA0A2 = zA0A;
                    c = 2;
                    break;
                case 22:
                    zA0A2 = false;
                    z2 = false;
                    c = 20;
                    break;
                case 23:
                    jA08 = C0430Ay.A09();
                    c = 19;
                    break;
                case 24:
                    zA0A2 = false;
                    z = false;
                    c = 14;
                    break;
            }
        }
    }
}
