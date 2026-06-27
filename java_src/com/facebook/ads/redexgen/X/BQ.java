package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class BQ implements SensorEventListener {
    private final SensorEventListener A00;

    public BQ(SensorEventListener sensorEventListener) {
        this.A00 = sensorEventListener;
    }

    @Override // android.hardware.SensorEventListener
    @SuppressLint({"CatchGeneralException"})
    public final void onAccuracyChanged(Sensor sensor, int i) {
        try {
            this.A00.onAccuracyChanged(sensor, i);
        } catch (Throwable th) {
            BC.A03(th);
        }
    }

    @Override // android.hardware.SensorEventListener
    @SuppressLint({"CatchGeneralException"})
    public final void onSensorChanged(SensorEvent sensorEvent) {
        try {
            this.A00.onSensorChanged(sensorEvent);
        } catch (Throwable th) {
            BC.A03(th);
        }
    }
}
