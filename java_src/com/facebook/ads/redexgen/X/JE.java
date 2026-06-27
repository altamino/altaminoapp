package com.facebook.ads.redexgen.X;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.Sensor;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.support.annotation.Nullable;
import io.agora.rtc.Constants;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicReference;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class JE {
    private static Sensor A00;
    private static Sensor A01;
    private static SensorEventListener A02;
    private static SensorEventListener A03;
    private static SensorManager A04;
    private static Map<String, String> A05;
    private static byte[] A06;
    private static String[] A07;
    private static final AtomicReference<String> A08;
    private static volatile float[] A09;
    private static volatile float[] A0A;

    private static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A06, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 64);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A03() {
        A06 = new byte[]{49, -60, -120, -57, -59, -50, -59, -46, -55, -61, -57, -64, -47, -64, -57, -13, -18, -13, -32, -21, -34, -20, -28, -20, -18, -15, -8, -24, -22, -22, -20, -13, -20, -7, -10, -12, -20, -5, -20, -7, -26, 55, 0, -14, -5, 0, -4, -1, 24, 25, 6, 25, 26, 24, -5, 16, -5, 3, 6, -5, -4, 6, -1, -7, 7, -1, 7, 9, 12, 19, 9, 22, 12, 26, 23, 17, 12, -42, 17, 22, 28, 13, 22, 28, -42, 9, 11, 28, 17, 23, 22, -42, -22, -23, -4, -4, -19, -6, 1, 7, -21, -16, -23, -10, -17, -19, -20, -72, -73, -54, -54, -69, -56, -49, -5, 7, -6, -6, -12, 8, 5, -10, -8, -6, 5, -11, -13, -2, -9, -72, -75, -70, -89, -70, -81, -75, -76, -91, -7, -5, 12, 1, 14, 1, 12, 17, -43, -38, -45, -28, -39, -37, -32, -39, -45};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 6 out of bounds for length 5
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:125)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:638)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    public static void A08(Context context) {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        String strValueOf = String.valueOf(statFs.getAvailableBlocks() * statFs.getBlockSize());
        A08.set(strValueOf);
        A05.put(A01(114, 10, 85), strValueOf);
    }

    static {
        A03();
        A04 = null;
        A00 = null;
        A01 = null;
        A05 = new ConcurrentHashMap();
        A07 = new String[]{A01(Constants.ERR_PUBLISH_STREAM_INTERNAL_SERVER_ERROR, 1, 27), A01(0, 1, 120), A01(41, 1, 125)};
        A08 = new AtomicReference<>();
    }

    private JE() {
    }

    @Nullable
    public static String A00() {
        return A08.get();
    }

    public static Map<String, String> A02() {
        Map<String, String> currentAnalogInfo = new HashMap<>();
        currentAnalogInfo.putAll(A05);
        A0C(currentAnalogInfo);
        return currentAnalogInfo;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized void A06() {
        if (A04 != null) {
            A04.unregisterListener(A02);
        }
        A02 = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized void A07() {
        if (A04 != null) {
            A04.unregisterListener(A03);
        }
        A03 = null;
    }

    private static void A09(Context context) {
        try {
            Intent intentRegisterReceiver = context.registerReceiver(null, new IntentFilter(A01(70, 37, 104)));
            if (intentRegisterReceiver != null) {
                int intExtra = intentRegisterReceiver.getIntExtra(A01(10, 5, 27), -1);
                int intExtra2 = intentRegisterReceiver.getIntExtra(A01(124, 5, 82), -1);
                int level = intentRegisterReceiver.getIntExtra(A01(48, 6, 101), -1);
                boolean z = level == 2 || level == 5;
                float f = 0.0f;
                if (intExtra2 > 0) {
                    f = (intExtra / intExtra2) * 100.0f;
                }
                A05.put(A01(107, 7, 22), String.valueOf(f));
                A05.put(A01(146, 8, 50), z ? A01(2, 1, 23) : A01(1, 1, 84));
            }
        } catch (IllegalArgumentException e) {
            P7.A07(context.getApplicationContext(), A01(3, 7, 32), P8.A13, new PA(e));
        }
    }

    private static void A0A(Context context) {
        ActivityManager.MemoryInfo mi = new ActivityManager.MemoryInfo();
        ((ActivityManager) context.getSystemService(A01(138, 8, 88))).getMemoryInfo(mi);
        A05.put(A01(54, 16, 90), String.valueOf(mi.availMem));
        if (Build.VERSION.SDK_INT >= 16) {
            A05.put(A01(15, 12, 63), String.valueOf(mi.totalMem));
        }
    }

    public static synchronized void A0B(Context context) {
        A0A(context);
        A09(context);
        if (A04 == null) {
            A04 = (SensorManager) context.getSystemService(A01(42, 6, 77));
            if (A04 != null) {
            }
        }
        if (A00 == null) {
            A00 = A04.getDefaultSensor(1);
        }
        if (A01 == null) {
            A01 = A04.getDefaultSensor(4);
        }
        if (A02 == null) {
            A02 = new JC();
            if (A00 != null) {
                A04.registerListener(A02, A00, 3);
            }
        }
        if (A03 == null) {
            A03 = new JD();
            if (A01 != null) {
                A04.registerListener(A03, A01, 3);
            }
        }
    }

    private static void A0C(Map<String, String> map) {
        int iMin = 0;
        int iMin2 = 0;
        int i = 0;
        int i2 = 0;
        float[] fArr = A09;
        float[] fArr2 = A0A;
        int i3 = fArr != null ? 2 : 5;
        while (true) {
            switch (i3) {
                case 2:
                    fArr = fArr;
                    iMin2 = Math.min(A07.length, fArr.length);
                    i = 0;
                    i3 = 3;
                    break;
                case 3:
                    if (i >= iMin2) {
                        i3 = 5;
                        break;
                    } else {
                        i3 = 4;
                        break;
                    }
                case 4:
                    map = map;
                    fArr = fArr;
                    map.put(A01(27, 14, 71) + A07[i], String.valueOf(fArr[i]));
                    i++;
                    i3 = 3;
                    break;
                case 5:
                    fArr2 = fArr2;
                    if (fArr2 == null) {
                        i3 = 9;
                        break;
                    } else {
                        i3 = 6;
                        break;
                    }
                case 6:
                    fArr2 = fArr2;
                    iMin = Math.min(A07.length, fArr2.length);
                    i2 = 0;
                    i3 = 7;
                    break;
                case 7:
                    if (i2 >= iMin) {
                        i3 = 9;
                        break;
                    } else {
                        i3 = 8;
                        break;
                    }
                case 8:
                    map = map;
                    fArr2 = fArr2;
                    map.put(A01(129, 9, 6) + A07[i2], String.valueOf(fArr2[i2]));
                    i2++;
                    i3 = 7;
                    break;
                case 9:
                    return;
            }
        }
    }
}
