package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.Nullable;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Fb, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0537Fb implements SensorEventListener {
    private static byte[] A05;
    private static final AtomicBoolean A06;
    private static final String[] A07;
    private BQ A00;
    private final SensorManager A03;

    @Nullable
    private float[] A01 = null;

    @Nullable
    private float[] A02 = null;
    private final Handler A04 = new Handler(FE.A00().A03().getLooper());

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 74);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A05 = new byte[]{41, 20, 16, 2, 11, 16, 12, 15, -38, 20};
    }

    static {
        A02();
        A06 = new AtomicBoolean();
        A07 = new String[]{A00(9, 1, 83), A00(8, 1, 24), A00(0, 1, 102), A00(1, 1, 80)};
    }

    public C0537Fb(Context context) {
        this.A03 = (SensorManager) context.getSystemService(A00(2, 6, 83));
    }

    private JSONObject A01(float[] fArr) throws Throwable {
        return new JSONObject().put(A07[0], fArr[0]).put(A07[1], fArr[1]).put(A07[2], fArr[2]).put(A07[3], fArr[3]);
    }

    @Nullable
    @SuppressLint({"CatchGeneralException"})
    public final JSONArray A03() {
        JSONArray jSONArray = new JSONArray();
        if (this.A01 == null) {
            return jSONArray;
        }
        try {
            jSONArray.put(A01(this.A01));
            if (this.A02 == null) {
                return jSONArray;
            }
            jSONArray.put(A01(this.A02));
            return jSONArray;
        } catch (Throwable unused) {
            return null;
        }
    }

    @SuppressLint({"CatchGeneralException"})
    public final synchronized boolean A04() {
        boolean z = true;
        synchronized (this) {
            try {
                this.A00 = new BQ(this);
                this.A03.registerListener(this.A00, this.A03.getDefaultSensor(11), 3, this.A04);
                A06.set(true);
            } catch (Throwable th) {
                BC.A03(th);
                z = false;
            }
        }
        return z;
    }

    @SuppressLint({"CatchGeneralException"})
    public final synchronized boolean A05() {
        boolean z = false;
        synchronized (this) {
            try {
                if (A06.get()) {
                    this.A03.unregisterListener(this.A00, this.A03.getDefaultSensor(11));
                    A06.set(false);
                    z = true;
                }
            } catch (Throwable th) {
                BC.A03(th);
            }
        }
        return z;
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    @SuppressLint({"CatchGeneralException"})
    public final void onSensorChanged(SensorEvent sensorEvent) {
        float[] fArr = null;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    try {
                        if (A06.get() && sensorEvent != null && sensorEvent.sensor.getType() == 11) {
                            fArr = new float[4];
                            SensorManager.getQuaternionFromVector(fArr, sensorEvent.values);
                            if (this.A01 != null) {
                                c = 15;
                                break;
                            } else {
                                c = 14;
                                break;
                            }
                        }
                        return;
                    } catch (Throwable th) {
                        BC.A03(th);
                        return;
                    }
                case 14:
                    this.A01 = fArr;
                    return;
                case 15:
                    this.A02 = fArr;
                    return;
            }
        }
    }
}
