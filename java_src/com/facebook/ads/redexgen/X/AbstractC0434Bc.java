package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import java.util.List;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Bc, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public abstract class AbstractC0434Bc {
    private final Context A00;
    private final C0430Ay A01;

    public AbstractC0434Bc(Context context, C0430Ay c0430Ay) {
        this.A00 = context;
        this.A01 = c0430Ay;
    }

    private int A00(C0430Ay c0430Ay, C0519Ej c0519Ej) {
        int iA0L = 0;
        char c = c0430Ay.A0V(c0519Ej.A00()) != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0430Ay = c0430Ay;
                    c0519Ej = c0519Ej;
                    iA0L = c0430Ay.A0V(c0519Ej.A00()).intValue();
                    c = 3;
                    break;
                case 3:
                    return iA0L;
                case 4:
                    c0519Ej = c0519Ej;
                    if (!c0519Ej.A02().contains(EnumC0525Ep.A0A)) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c0430Ay = c0430Ay;
                    iA0L = c0430Ay.A0M();
                    c = 3;
                    break;
                case 6:
                    c0519Ej = c0519Ej;
                    if (!c0519Ej.A02().contains(EnumC0525Ep.A07)) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c0430Ay = c0430Ay;
                    iA0L = c0430Ay.A0L();
                    c = 3;
                    break;
                case '\b':
                    c0430Ay = c0430Ay;
                    iA0L = c0430Ay.A0P();
                    c = 3;
                    break;
            }
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.B6 != com.facebook.ads.internal.botdetection.interval.buffer.CircularBuffer<com.facebook.ads.internal.botdetection.signals.model.signal_value.SignalValueTypeDef> */
    @SuppressLint({"CatchGeneralException"})
    public final synchronized void A01(EnumC0522Em enumC0522Em, List<C0519Ej> list) {
        AbstractC0528Es abstractC0528EsA04;
        Map<Integer, B6<AbstractC0528Es>> mapA03 = C0523En.A01().A03();
        for (C0519Ej c0519Ej : list) {
            InterfaceC0442Bk interfaceC0442BkA01 = c0519Ej.A01(enumC0522Em);
            if (interfaceC0442BkA01 != null) {
                try {
                    abstractC0528EsA04 = interfaceC0442BkA01.A31();
                } catch (Throwable th) {
                    abstractC0528EsA04 = FH.A04(this.A00.getPackageName(), th);
                }
                if (abstractC0528EsA04 != null && abstractC0528EsA04.A07() != null) {
                    if (c0519Ej.A02().contains(EnumC0525Ep.A0A) && mapA03.containsKey(Integer.valueOf(c0519Ej.A00()))) {
                        B6<AbstractC0528Es> b6 = mapA03.get(Integer.valueOf(c0519Ej.A00()));
                        AbstractC0528Es abstractC0528EsA02 = b6 != null ? b6.A02() : null;
                        if (b6 == null) {
                            b6 = new B6<>(A00(this.A01, c0519Ej));
                        }
                        if (abstractC0528EsA02 == null || !abstractC0528EsA04.A0B(abstractC0528EsA02, c0519Ej.A02())) {
                            b6.A04(abstractC0528EsA04);
                            C0523En.A01().A04(c0519Ej.A00(), b6, abstractC0528EsA04.A05());
                        }
                    } else {
                        B6<AbstractC0528Es> b62 = new B6<>(A00(this.A01, c0519Ej));
                        b62.A04(abstractC0528EsA04);
                        C0523En.A01().A04(c0519Ej.A00(), b62, abstractC0528EsA04.A05());
                    }
                }
            }
        }
    }
}
