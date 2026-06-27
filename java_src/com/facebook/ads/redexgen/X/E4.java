package com.facebook.ads.redexgen.X;

import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.os.Build;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class E4 implements InterfaceC0442Bk {
    private static byte[] A01;
    public final /* synthetic */ E6 A00;

    static {
        A01();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 16);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{53, 35, 40, 53, 41, 52};
    }

    public E4(E6 e6) {
        this.A00 = e6;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0442Bk
    public final AbstractC0528Es A31() throws Exception {
        E4 e4 = this;
        AbstractC0528Es abstractC0528EsA07 = null;
        Iterator<Sensor> it = null;
        ArrayList arrayList = null;
        e4.A00.A00 = (SensorManager) e4.A00.A01.getSystemService(A00(0, 6, 86));
        char c = Build.VERSION.SDK_INT < 20 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    e4 = e4;
                    abstractC0528EsA07 = e4.A00.A07(F6.A03);
                    c = 3;
                    break;
                case 3:
                    return abstractC0528EsA07;
                case 4:
                    e4 = e4;
                    if (e4.A00.A00 != null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    e4 = e4;
                    abstractC0528EsA07 = e4.A00.A07(F6.A05);
                    c = 3;
                    break;
                case 6:
                    e4 = e4;
                    List<Sensor> sensorList = e4.A00.A00.getSensorList(-1);
                    arrayList = new ArrayList();
                    it = sensorList.iterator();
                    c = 7;
                    break;
                case 7:
                    it = it;
                    if (!it.hasNext()) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    arrayList = arrayList;
                    it = it;
                    arrayList.add(new E5(it.next()));
                    c = 7;
                    break;
                case '\t':
                    e4 = e4;
                    arrayList = arrayList;
                    abstractC0528EsA07 = e4.A00.A0D(arrayList);
                    c = 3;
                    break;
            }
        }
    }
}
