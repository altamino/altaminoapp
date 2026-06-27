package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class BM {
    private final C0430Ay A00;
    private final Map<Integer, C0519Ej> A01;
    private final AtomicBoolean A02 = new AtomicBoolean();

    public BM(C0430Ay c0430Ay, Map<Integer, C0519Ej> map) {
        this.A00 = c0430Ay;
        this.A01 = map;
        this.A02.compareAndSet(false, true);
    }

    private int A00(int i) {
        BM bm = this;
        int iIntValue = 0;
        char c = bm.A00.A0V(i) != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    bm = bm;
                    iIntValue = bm.A00.A0V(i).intValue();
                    c = 3;
                    break;
                case 3:
                    return iIntValue;
                case 4:
                    bm = bm;
                    iIntValue = bm.A00.A0L();
                    c = 3;
                    break;
            }
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.B6 != com.facebook.ads.internal.botdetection.interval.buffer.CircularBuffer<com.facebook.ads.internal.botdetection.signals.model.signal_value.SignalValueTypeDef> */
    private synchronized void A01(AbstractC0528Es abstractC0528Es, C0519Ej c0519Ej) {
        int signalId = c0519Ej.A00();
        Map<Integer, B6<AbstractC0528Es>> mapA03 = C0523En.A01().A03();
        if (mapA03.containsKey(Integer.valueOf(signalId))) {
            B6<AbstractC0528Es> b6 = mapA03.get(Integer.valueOf(signalId));
            AbstractC0528Es abstractC0528EsA02 = b6 != null ? b6.A02() : null;
            if (b6 == null) {
                b6 = new B6<>(A00(signalId));
            }
            if (!abstractC0528Es.A0B(abstractC0528EsA02, c0519Ej.A02())) {
                b6.A04(abstractC0528Es);
                C0523En.A01().A04(signalId, b6, abstractC0528Es.A05());
            }
        } else {
            B6<AbstractC0528Es> b62 = new B6<>(A00(signalId));
            b62.A04(abstractC0528Es);
            C0523En.A01().A04(signalId, b62, abstractC0528Es.A05());
        }
    }

    @SuppressLint({"CatchGeneralException"})
    public final void A02(AbstractC0528Es abstractC0528Es, BL bl) {
        if (!this.A02.get()) {
            return;
        }
        try {
            switch (bl) {
                case A0D:
                    C0519Ej bdGeomagneticRotationSensorSignal = this.A01.get(10800);
                    C0519Ej bdTouchSignal = bdGeomagneticRotationSensorSignal;
                    if (abstractC0528Es != null && bdTouchSignal != null) {
                        A01(abstractC0528Es, bdTouchSignal);
                        break;
                    }
                    break;
                case A02:
                    C0519Ej c0519Ej = this.A01.get(10810);
                    if (abstractC0528Es != null && c0519Ej != null) {
                        A01(abstractC0528Es, c0519Ej);
                        break;
                    }
                    break;
                case A08:
                    C0519Ej bdGeomagneticRotationSensorSignal2 = this.A01.get(10812);
                    C0519Ej bdGeomagneticRotationSensorSignal3 = bdGeomagneticRotationSensorSignal2;
                    if (abstractC0528Es != null && bdGeomagneticRotationSensorSignal3 != null) {
                        A01(abstractC0528Es, bdGeomagneticRotationSensorSignal3);
                        break;
                    }
                    break;
                case A05:
                    C0519Ej bdGeomagneticRotationSensorSignal4 = this.A01.get(10813);
                    if (abstractC0528Es != null && bdGeomagneticRotationSensorSignal4 != null) {
                        A01(abstractC0528Es, bdGeomagneticRotationSensorSignal4);
                        break;
                    }
                    break;
                case A09:
                    C0519Ej bdOrientationSensorSignal = this.A01.get(10814);
                    if (abstractC0528Es != null && bdOrientationSensorSignal != null) {
                        A01(abstractC0528Es, bdOrientationSensorSignal);
                        break;
                    }
                    break;
                case A0A:
                    C0519Ej bdProximitySensorSignal = this.A01.get(10815);
                    if (abstractC0528Es != null && bdProximitySensorSignal != null) {
                        A01(abstractC0528Es, bdProximitySensorSignal);
                        break;
                    }
                    break;
                case A0C:
                    C0519Ej bdStepDetectorSensorSignal = this.A01.get(10816);
                    if (abstractC0528Es != null && bdStepDetectorSensorSignal != null) {
                        A01(abstractC0528Es, bdStepDetectorSensorSignal);
                        break;
                    }
                    break;
                case A07:
                    C0519Ej bdLightSensorSignal = this.A01.get(10817);
                    if (abstractC0528Es != null && bdLightSensorSignal != null) {
                        A01(abstractC0528Es, bdLightSensorSignal);
                        break;
                    }
                    break;
                case A04:
                    C0519Ej c0519Ej2 = this.A01.get(10818);
                    if (abstractC0528Es != null && c0519Ej2 != null) {
                        A01(abstractC0528Es, c0519Ej2);
                        break;
                    }
                    break;
                case A03:
                    C0519Ej c0519Ej3 = this.A01.get(10819);
                    if (abstractC0528Es != null && c0519Ej3 != null) {
                        A01(abstractC0528Es, c0519Ej3);
                        break;
                    }
                    break;
                case A0B:
                    C0519Ej c0519Ej4 = this.A01.get(10820);
                    if (abstractC0528Es != null && c0519Ej4 != null) {
                        A01(abstractC0528Es, c0519Ej4);
                        break;
                    }
                    break;
            }
        } catch (Throwable t) {
            BC.A03(t);
        }
    }
}
