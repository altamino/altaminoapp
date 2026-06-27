package com.facebook.ads.redexgen.X;

import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.os.Build;
import android.support.v8.renderscript.ScriptIntrinsicBLAS;
import io.agora.rtc.Constants;
import java.util.Arrays;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class H3 implements InterfaceC0552Fq {
    private static byte[] A01;
    public final /* synthetic */ H4 A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 23);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{-48, -33, -57, -40, -38, -41, -32, -47, -43, -47, -36, -31, -57, -37, -51, -42, -37, -41, -38, -18, -3, -27, -25, -23, -23, -21, -14, -21, -8, -11, -13, -21, -6, -21, -8, -124, -109, 123, 126, 125, -114, -117, -119, -127, -112, -127, -114, -63, -77, -68, -63, -67, -64, -83, -70, -80, -66, -69, -75, -80, 122, -65, -79, -70, -65, -69, -66, 122, -68, -66, -79, -65, -65, -63, -66, -79, -66, -53, -63, -49, -52, -58, -63, -117, -48, -62, -53, -48, -52, -49, -117, -60, -62, -52, -54, -66, -60, -53, -62, -47, -58, -64, -68, -49, -52, -47, -66, -47, -58, -52, -53, -68, -45, -62, -64, -47, -52, -49, -92, -79, -89, -75, -78, -84, -89, 113, -74, -88, -79, -74, -78, -75, 113, -77, -75, -78, -69, -84, -80, -84, -73, -68, -111, -96, -120, -116, -104, -106, -103, -118, -100, -100, -34, -19, -43, -30, -33, -35, -34, -22, -43, -23, -37, -28, -23, -27, -24, -111, -96, -120, -112, -94, -101, -104, -77, -64, -74, -60, -63, -69, -74, -128, -59, -73, -64, -59, -63, -60, -128, -71, -53, -60, -63, -59, -75, -63, -62, -73, -54, -41, -51, -37, -40, -46, -51, -105, -36, -50, -41, -36, -40, -37, -105, -54, -52, -52, -50, -43, -50, -37, -40, -42, -50, -35, -50, -37, -106, -93, -103, -89, -92, -98, -103, 99, -88, -102, -93, -88, -92, -89, 99, -95, -98, -100, -99, -87};
    }

    public H3(H4 h4) {
        this.A00 = h4;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        H3 h3 = this;
        int i = 0;
        List<Sensor> sensorList = null;
        Sensor sensor = null;
        h3.A00.A06 = (SensorManager) h3.A00.A07.getSystemService(A00(47, 6, 55));
        char c = Build.VERSION.SDK_INT >= 20 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    h3 = h3;
                    if (h3.A00.A06 != null) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    h3 = h3;
                    h3.A00.A02();
                    c = 4;
                    break;
                case 4:
                    return;
                case 5:
                    h3 = h3;
                    sensorList = h3.A00.A06.getSensorList(-1);
                    i = 0;
                    c = 6;
                    break;
                case 6:
                    sensorList = sensorList;
                    if (i >= sensorList.size()) {
                        c = 20;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    sensorList = sensorList;
                    sensor = sensorList.get(i);
                    if (!A00(226, 20, 30).equals(sensor.getStringType())) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    h3 = h3;
                    sensor = sensor;
                    h3.A00.A06(A00(Constants.ERR_PUBLISH_STREAM_NUM_REACH_LIMIT, 15, 95), sensor);
                    h3.A00.A04 = true;
                    c = '\t';
                    break;
                case '\t':
                    sensor = sensor;
                    if (!A00(118, 24, 44).equals(sensor.getStringType())) {
                        c = 11;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    h3 = h3;
                    sensor = sensor;
                    h3.A00.A06(A00(0, 19, 81), sensor);
                    h3.A00.A05 = true;
                    c = 11;
                    break;
                case 11:
                    sensor = sensor;
                    if (!A00(174, 24, 59).equals(sensor.getStringType())) {
                        c = '\r';
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    h3 = h3;
                    sensor = sensor;
                    h3.A00.A06(A00(167, 7, 18), sensor);
                    h3.A00.A03 = true;
                    c = '\r';
                    break;
                case '\r':
                    sensor = sensor;
                    if (!A00(198, 28, 82).equals(sensor.getStringType())) {
                        c = 15;
                        break;
                    } else {
                        c = 14;
                        break;
                    }
                case 14:
                    h3 = h3;
                    sensor = sensor;
                    h3.A00.A06(A00(19, 16, 111), sensor);
                    h3.A00.A00 = true;
                    c = 15;
                    break;
                case 15:
                    sensor = sensor;
                    if (!A00(76, 42, 70).equals(sensor.getStringType())) {
                        c = 17;
                        break;
                    } else {
                        c = 16;
                        break;
                    }
                case 16:
                    h3 = h3;
                    sensor = sensor;
                    h3.A00.A06(A00(ScriptIntrinsicBLAS.RIGHT, 10, 18), sensor);
                    h3.A00.A02 = true;
                    c = 17;
                    break;
                case 17:
                    sensor = sensor;
                    if (!A00(53, 23, 53).equals(sensor.getStringType())) {
                        c = 19;
                        break;
                    } else {
                        c = 18;
                        break;
                    }
                case 18:
                    h3 = h3;
                    sensor = sensor;
                    h3.A00.A06(A00(35, 12, 5), sensor);
                    h3.A00.A01 = true;
                    c = 19;
                    break;
                case 19:
                    i++;
                    c = 6;
                    break;
                case 20:
                    h3 = h3;
                    h3.A00.A02();
                    c = 4;
                    break;
            }
        }
    }
}
