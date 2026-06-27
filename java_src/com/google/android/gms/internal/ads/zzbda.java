package com.google.android.gms.internal.ads;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.Display;
import android.view.WindowManager;

@zzard
/* loaded from: classes2.dex */
final class zzbda implements SensorEventListener {
    private final SensorManager zzecv;
    private final Display zzecx;
    private float[] zzeda;
    private Handler zzedb;
    private zzbdc zzedc;
    private final float[] zzecy = new float[9];
    private final float[] zzecz = new float[9];
    private final Object zzecw = new Object();

    zzbda(Context context) {
        this.zzecv = (SensorManager) context.getSystemService("sensor");
        this.zzecx = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i) {
    }

    final void start() {
        if (this.zzedb != null) {
            return;
        }
        Sensor defaultSensor = this.zzecv.getDefaultSensor(11);
        if (defaultSensor == null) {
            zzbad.zzen("No Sensor of TYPE_ROTATION_VECTOR");
            return;
        }
        HandlerThread handlerThread = new HandlerThread("OrientationMonitor");
        handlerThread.start();
        this.zzedb = new zzdbh(handlerThread.getLooper());
        if (this.zzecv.registerListener(this, defaultSensor, 0, this.zzedb)) {
            return;
        }
        zzbad.zzen("SensorManager.registerListener failed.");
        stop();
    }

    final void stop() {
        if (this.zzedb == null) {
            return;
        }
        this.zzecv.unregisterListener(this);
        this.zzedb.post(new zzbdb(this));
        this.zzedb = null;
    }

    final void zza(zzbdc zzbdcVar) {
        this.zzedc = zzbdcVar;
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        float[] fArr = sensorEvent.values;
        if (fArr[0] == 0.0f && fArr[1] == 0.0f && fArr[2] == 0.0f) {
            return;
        }
        synchronized (this.zzecw) {
            if (this.zzeda == null) {
                this.zzeda = new float[9];
            }
        }
        SensorManager.getRotationMatrixFromVector(this.zzecy, fArr);
        int rotation = this.zzecx.getRotation();
        if (rotation == 1) {
            SensorManager.remapCoordinateSystem(this.zzecy, 2, 129, this.zzecz);
        } else if (rotation == 2) {
            SensorManager.remapCoordinateSystem(this.zzecy, 129, 130, this.zzecz);
        } else if (rotation == 3) {
            SensorManager.remapCoordinateSystem(this.zzecy, 130, 1, this.zzecz);
        } else {
            System.arraycopy(this.zzecy, 0, this.zzecz, 0, 9);
        }
        zzl(1, 3);
        zzl(2, 6);
        zzl(5, 7);
        synchronized (this.zzecw) {
            System.arraycopy(this.zzecz, 0, this.zzeda, 0, 9);
        }
        zzbdc zzbdcVar = this.zzedc;
        if (zzbdcVar != null) {
            zzbdcVar.zztk();
        }
    }

    final boolean zza(float[] fArr) {
        synchronized (this.zzecw) {
            if (this.zzeda == null) {
                return false;
            }
            System.arraycopy(this.zzeda, 0, fArr, 0, this.zzeda.length);
            return true;
        }
    }

    private final void zzl(int i, int i2) {
        float[] fArr = this.zzecz;
        float f = fArr[i];
        fArr[i] = fArr[i2];
        fArr[i2] = f;
    }
}
