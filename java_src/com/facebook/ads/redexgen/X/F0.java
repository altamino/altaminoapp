package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import javax.annotation.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class F0<T> extends AbstractC0528Es<List<T>> {
    private static byte[] A02;
    private final F9 A00;
    private final List<T> A01;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 76);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A02 = new byte[]{-43};
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.F0 != com.facebook.ads.internal.botdetection.signals.model.signal_value.ListSignalValueType<T> */
    public F0(long j, @Nullable F8 f8, List<T> signalValue, F9 f9) {
        super(j, f8, signalValue, F9.A08);
        this.A01 = signalValue;
        this.A00 = f9;
        if (!A03()) {
            throw new UnsupportedOperationException();
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.F0 != com.facebook.ads.internal.botdetection.signals.model.signal_value.ListSignalValueType<T> */
    /* JADX WARN: Multi-variable type inference failed */
    @SuppressLint({"BadMethodUse-java.lang.String.length"})
    private int A00(T t) {
        char c;
        int iA76 = 0;
        switch (this.A00) {
            case A06:
                c = 4;
                break;
            case A0C:
                c = 5;
                break;
            case A03:
                c = 3;
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
                    t = t;
                    iA76 = ((InterfaceC0466Ci) t).A76();
                    c = 6;
                    break;
                case 4:
                    iA76 = 4;
                    c = 6;
                    break;
                case 5:
                    t = (T) t;
                    iA76 = ((String) t).length();
                    c = 6;
                    break;
                case 6:
                    return iA76;
            }
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.F0 != com.facebook.ads.internal.botdetection.signals.model.signal_value.ListSignalValueType<T> */
    private boolean A03() {
        char c;
        boolean z = false;
        switch (this.A00) {
            case A06:
                c = 4;
                break;
            case A0C:
                c = 4;
                break;
            case A03:
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

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.F0 != com.facebook.ads.internal.botdetection.signals.model.signal_value.ListSignalValueType<T> */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.facebook.ads.redexgen.X.AbstractC0528Es
    public final int A06() {
        F0 f0 = this;
        int i = 0;
        Iterator it = null;
        int iA00 = 0;
        char c = f0.A07() != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    f0 = f0;
                    if (!((List) f0.A07()).isEmpty()) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    iA00 = 0;
                    i = 0;
                    c = 4;
                    break;
                case 4:
                    return i;
                case 5:
                    f0 = f0;
                    it = ((List) f0.A07()).iterator();
                    c = 6;
                    break;
                case 6:
                    it = it;
                    if (!it.hasNext()) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    f0 = f0;
                    it = it;
                    iA00 += f0.A00(it.next());
                    c = 6;
                    break;
                case '\b':
                    i = iA00;
                    c = 4;
                    break;
            }
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.F0 != com.facebook.ads.internal.botdetection.signals.model.signal_value.ListSignalValueType<T> */
    @Override // com.facebook.ads.redexgen.X.AbstractC0528Es
    public final JSONObject A09(JSONObject jSONObject) throws JSONException {
        F0<T> f0 = this;
        Object next = null;
        JSONArray jSONArray = new JSONArray();
        Iterator<T> it = f0.A01.iterator();
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    it = it;
                    if (!it.hasNext()) {
                        c = 6;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    f0 = f0;
                    it = it;
                    next = it.next();
                    switch (f0.A00) {
                        case A06:
                            c = 5;
                            break;
                        case A0C:
                            c = 5;
                            break;
                        case A03:
                            c = 4;
                            break;
                        default:
                            c = 2;
                            break;
                    }
                case 4:
                    jSONArray = jSONArray;
                    next = next;
                    jSONArray.put(((InterfaceC0466Ci) next).A79());
                    c = 2;
                    break;
                case 5:
                    jSONArray = jSONArray;
                    next = next;
                    jSONArray.put(next);
                    c = 2;
                    break;
                case 6:
                    JSONObject jSONObject2 = jSONObject;
                    jSONObject2.put(A01(0, 1, 19), jSONArray);
                    return jSONObject2;
            }
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Es != com.facebook.ads.internal.botdetection.signals.model.signal_value.SignalValueTypeDef<java.util.List<T>> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.F0 != com.facebook.ads.internal.botdetection.signals.model.signal_value.ListSignalValueType<T> */
    @Override // com.facebook.ads.redexgen.X.AbstractC0528Es
    public final boolean A0A(AbstractC0528Es<List<T>> abstractC0528Es) {
        F0<T> f0 = this;
        Object obj = null;
        boolean z = false;
        int i = 0;
        T t = null;
        boolean z2 = false;
        List<T> listA07 = abstractC0528Es.A07();
        List list = (List) f0.A07();
        char c = list != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    listA07 = listA07;
                    if (listA07 != null) {
                        c = '\t';
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    list = list;
                    if (list != null) {
                        c = '\b';
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    listA07 = listA07;
                    if (listA07 != null) {
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
                    f0 = f0;
                    abstractC0528Es = abstractC0528Es;
                    if (abstractC0528Es.A07().size() != ((List) f0.A07()).size()) {
                        c = 7;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    i = 0;
                    c = 11;
                    break;
                case 11:
                    listA07 = listA07;
                    if (i >= listA07.size()) {
                        c = 16;
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    f0 = f0;
                    listA07 = listA07;
                    list = list;
                    t = listA07.get(i);
                    obj = list.get(i);
                    switch (f0.A00) {
                        case A06:
                            c = 14;
                            break;
                        case A0C:
                            c = 14;
                            break;
                        case A03:
                            c = 15;
                            break;
                        default:
                            c = '\r';
                            break;
                    }
                case '\r':
                    i++;
                    c = 11;
                    break;
                case 14:
                    listA07 = listA07;
                    list = list;
                    if (!listA07.get(i).equals(list.get(i))) {
                        c = 7;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case 15:
                    t = (T) t;
                    obj = obj;
                    if (!t.A3v(obj)) {
                        c = 7;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case 16:
                    z2 = true;
                    c = 7;
                    break;
            }
        }
    }
}
