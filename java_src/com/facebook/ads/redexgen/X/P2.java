package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.SystemClock;
import android.support.annotation.Nullable;
import android.widget.Toast;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class P2 implements SensorEventListener {
    private static byte[] A0A;
    private long A04;
    private long A05;
    private long A06;

    @Nullable
    private SensorManager A07;
    private final Context A08;
    private int A03 = 0;
    private float A00 = -1.0f;
    private float A01 = -1.0f;
    private float A02 = -1.0f;
    private final Set<InterfaceC0790Oz> A09 = new CopyOnWriteArraySet();

    static {
        A02();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0A, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 125);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A0A = new byte[]{37, 58, 51, 61, 59, 64, 57, -14, 64, 65, 70, -14, 69, 71, 66, 66, 65, 68, 70, 55, 54, 29, 47, 56, 61, 57, 60, 61, -22, 56, 57, 62, -22, 61, 63, 58, 58, 57, 60, 62, 47, 46, 98, 84, 93, 98, 94, 97};
    }

    public P2(Context context) {
        this.A08 = context;
    }

    private void A01() {
        P2 p2 = this;
        boolean zRegisterListener = false;
        p2.A07 = (SensorManager) p2.A08.getSystemService(A00(42, 6, 114));
        char c = p2.A07 == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    p2 = p2;
                    Toast.makeText(p2.A08, A00(21, 21, 77), 1).show();
                    c = 3;
                    break;
                case 3:
                    zRegisterListener = false;
                    c = 4;
                    break;
                case 4:
                    try {
                        p2 = p2;
                        zRegisterListener = p2.A07.registerListener(p2, p2.A07.getDefaultSensor(1), 3);
                        c = '\n';
                        break;
                    } catch (Exception unused) {
                        Toast.makeText(p2.A08, A00(0, 21, 85), 1).show();
                        c = '\n';
                        break;
                    }
                case '\n':
                    if (!zRegisterListener) {
                        c = 11;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case 11:
                    p2 = p2;
                    if (p2.A07 == null) {
                        c = '\r';
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    p2 = p2;
                    p2.A07.unregisterListener(p2);
                    c = '\r';
                    break;
                case '\r':
                    return;
            }
        }
    }

    public final void A03(InterfaceC0790Oz interfaceC0790Oz) {
        P2 p2 = this;
        char c = p2.A09.isEmpty() ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    p2 = p2;
                    p2.A01();
                    c = 3;
                    break;
                case 3:
                    p2 = p2;
                    interfaceC0790Oz = interfaceC0790Oz;
                    p2.A09.add(interfaceC0790Oz);
                    c = 4;
                    break;
                case 4:
                    return;
                case 5:
                    p2 = p2;
                    interfaceC0790Oz = interfaceC0790Oz;
                    if (!p2.A09.contains(interfaceC0790Oz)) {
                        c = 3;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
            }
        }
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        P2 p2 = this;
        Iterator<InterfaceC0790Oz> it = null;
        long jElapsedRealtime = 0;
        int i = 0;
        char c = sensorEvent.sensor.getType() != 1 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    p2 = p2;
                    jElapsedRealtime = SystemClock.elapsedRealtime();
                    if (jElapsedRealtime - p2.A04 <= 500) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    p2 = p2;
                    i = 0;
                    p2.A03 = 0;
                    c = 5;
                    break;
                case 5:
                    p2 = p2;
                    if (jElapsedRealtime - p2.A06 <= 100) {
                        c = 2;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    p2 = p2;
                    sensorEvent = sensorEvent;
                    if ((Math.abs(((((sensorEvent.values[i] + sensorEvent.values[1]) + sensorEvent.values[2]) - p2.A00) - p2.A01) - p2.A02) / (jElapsedRealtime - p2.A06)) * 10000.0f <= 800.0f) {
                        c = '\r';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    p2 = p2;
                    int i2 = p2.A03 + 1;
                    p2.A03 = i2;
                    if (i2 < 3) {
                        c = '\f';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    p2 = p2;
                    if (jElapsedRealtime - p2.A05 <= 1000) {
                        c = '\f';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    p2 = p2;
                    p2.A05 = jElapsedRealtime;
                    p2.A03 = i;
                    it = p2.A09.iterator();
                    c = '\n';
                    break;
                case '\n':
                    it = it;
                    if (!it.hasNext()) {
                        c = '\f';
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    it = it;
                    it.next().A6G();
                    c = '\n';
                    break;
                case '\f':
                    p2 = p2;
                    p2.A04 = jElapsedRealtime;
                    c = '\r';
                    break;
                case '\r':
                    p2 = p2;
                    sensorEvent = sensorEvent;
                    p2.A06 = jElapsedRealtime;
                    p2.A00 = sensorEvent.values[i];
                    p2.A01 = sensorEvent.values[1];
                    p2.A02 = sensorEvent.values[2];
                    c = 2;
                    break;
            }
        }
    }
}
