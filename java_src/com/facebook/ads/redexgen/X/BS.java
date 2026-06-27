package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import android.os.SystemClock;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class BS implements SensorEventListener {
    private static byte[] A09;
    private static final String A0A;
    private BQ A00;
    private final Context A01;
    private final SensorManager A02;
    private final BM A04;
    private final BP A05;
    private final EnumC0525Ep A06;
    private final List<Sensor> A07;
    private final Map<Integer, BX> A08 = new HashMap();
    private final Handler A03 = new Handler(FE.A00().A03().getLooper());

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A09, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 23);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A09 = new byte[]{15, 25, 18, 15, 19, 14};
    }

    static {
        A01();
        A0A = BS.class.getSimpleName();
    }

    public BS(Context context, BM bm, EnumC0525Ep enumC0525Ep) {
        this.A01 = context;
        this.A02 = (SensorManager) context.getSystemService(A00(0, 6, 107));
        this.A07 = this.A02.getSensorList(-1);
        this.A04 = bm;
        this.A05 = new BP(this.A04, enumC0525Ep);
        this.A06 = enumC0525Ep;
    }

    @SuppressLint({"CatchGeneralException"})
    public final synchronized void A02(List<BX> list) {
        int iA02;
        try {
            for (BX bx : list) {
                if (bx != null && (iA02 = bx.A02()) != -1) {
                    Map<Integer, BX> map = this.A08;
                    int type = bx.ordinal();
                    if (map.get(Integer.valueOf(type)) == null) {
                        if (iA02 == 0) {
                            int[] iArr = BR.A00;
                            int type2 = bx.ordinal();
                            switch (iArr[type2]) {
                                case 1:
                                    this.A05.A02(this.A01);
                                    break;
                            }
                        } else {
                            for (Sensor sensor : this.A07) {
                                int type3 = sensor.getType();
                                if (iA02 == type3) {
                                    this.A00 = new BQ(this);
                                    this.A02.registerListener(this.A00, sensor, 3, this.A03);
                                    Map<Integer, BX> map2 = this.A08;
                                    int type4 = bx.ordinal();
                                    map2.put(Integer.valueOf(type4), bx);
                                }
                            }
                        }
                    }
                }
            }
        } catch (Throwable th) {
            BC.A03(th);
        }
    }

    @SuppressLint({"CatchGeneralException"})
    public final synchronized void A03(List<BX> list) {
        try {
            if (this.A08 != null) {
                if (list == null) {
                    this.A02.unregisterListener(this.A00);
                    this.A05.A01();
                    this.A08.clear();
                } else {
                    for (BX bx : list) {
                        if (bx.A02() != -1) {
                            if (bx.A02() == 0) {
                                this.A08.remove(Integer.valueOf(bx.ordinal()));
                                switch (BR.A00[bx.ordinal()]) {
                                    case 1:
                                        this.A05.A01();
                                        continue;
                                }
                            }
                            Iterator<Sensor> it = this.A07.iterator();
                            while (true) {
                                if (it.hasNext()) {
                                    Sensor next = it.next();
                                    if (bx.A02() == next.getType()) {
                                        try {
                                            this.A02.unregisterListener(this.A00, next);
                                            this.A08.remove(Integer.valueOf(bx.ordinal()));
                                        } catch (Throwable t) {
                                            BC.A03(t);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        } catch (Throwable t2) {
            BC.A03(t2);
        }
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    @SuppressLint({"CatchGeneralException"})
    public final void onSensorChanged(SensorEvent sensorEvent) {
        if (sensorEvent == null) {
        }
        try {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            F8 f8 = this.A06 == EnumC0525Ep.A0F ? null : new F8(this.A01 == null ? A00(6, 0, 86) : this.A01.getPackageName());
            switch (sensorEvent.sensor.getType()) {
                case 1:
                    this.A04.A02(new F4(jElapsedRealtime, f8, new BW(new float[]{sensorEvent.values[0], sensorEvent.values[1], sensorEvent.values[2]})), BL.A02);
                    break;
                case 2:
                    this.A04.A02(new F4(jElapsedRealtime, f8, new BW(new float[]{sensorEvent.values[0], sensorEvent.values[1], sensorEvent.values[2]})), BL.A08);
                    break;
                case 4:
                    this.A04.A02(new F4(jElapsedRealtime, f8, new BW(new float[]{sensorEvent.values[0], sensorEvent.values[1], sensorEvent.values[2]})), BL.A06);
                    break;
                case 5:
                    this.A04.A02(new C0532Ew(jElapsedRealtime, f8, sensorEvent.values[0]), BL.A07);
                    break;
                case 6:
                    this.A04.A02(new C0532Ew(jElapsedRealtime, f8, sensorEvent.values[0]), BL.A04);
                    break;
                case 8:
                    this.A04.A02(new C0532Ew(jElapsedRealtime, f8, sensorEvent.values[0]), BL.A0A);
                    break;
                case 12:
                    this.A04.A02(new C0532Ew(jElapsedRealtime, f8, sensorEvent.values[0]), BL.A0B);
                    break;
                case 13:
                    this.A04.A02(new C0532Ew(jElapsedRealtime, f8, sensorEvent.values[0]), BL.A03);
                    break;
                case 18:
                    this.A04.A02(new C0532Ew(jElapsedRealtime, f8, sensorEvent.values[0]), BL.A0C);
                    break;
                case 20:
                    this.A04.A02(new F4(jElapsedRealtime, f8, new BW(new float[]{sensorEvent.values[0], sensorEvent.values[1], sensorEvent.values[2], sensorEvent.values[3]})), BL.A05);
                    break;
            }
        } catch (Throwable t) {
            BC.A03(t);
        }
    }
}
