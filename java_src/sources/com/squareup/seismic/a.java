package com.squareup.seismic;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;

/* JADX INFO: loaded from: classes9.dex */
public class a implements SensorEventListener {
    private static final int DEFAULT_ACCELERATION_THRESHOLD = 13;
    public static final int SENSITIVITY_HARD = 15;
    public static final int SENSITIVITY_LIGHT = 11;
    public static final int SENSITIVITY_MEDIUM = 13;
    private Sensor accelerometer;
    private final InterfaceC0372a listener;
    private SensorManager sensorManager;
    private int accelerationThreshold = 13;
    private final d queue = new d();

    /* JADX INFO: renamed from: com.squareup.seismic.a$a, reason: collision with other inner class name */
    public interface InterfaceC0372a {
        void hearShake();
    }

    static class c {
        private b head;

        b a() {
            b bVar = this.head;
            if (bVar == null) {
                return new b();
            }
            this.head = bVar.next;
            return bVar;
        }

        void b(b bVar) {
            bVar.next = this.head;
            this.head = bVar;
        }

        c() {
        }
    }

    static class d {
        private static final long MAX_WINDOW_SIZE = 500000000;
        private static final int MIN_QUEUE_SIZE = 4;
        private static final long MIN_WINDOW_SIZE = 250000000;
        private int acceleratingCount;
        private b newest;
        private b oldest;
        private final c pool = new c();
        private int sampleCount;

        void b() {
            while (true) {
                b bVar = this.oldest;
                if (bVar == null) {
                    this.newest = null;
                    this.sampleCount = 0;
                    this.acceleratingCount = 0;
                    return;
                }
                this.oldest = bVar.next;
                this.pool.b(bVar);
            }
        }

        boolean c() {
            b bVar;
            b bVar2 = this.newest;
            if (bVar2 != null && (bVar = this.oldest) != null && bVar2.timestamp - bVar.timestamp >= MIN_WINDOW_SIZE) {
                int i10 = this.acceleratingCount;
                int i11 = this.sampleCount;
                if (i10 >= (i11 >> 1) + (i11 >> 2)) {
                    return true;
                }
            }
            return false;
        }

        void d(long j6) {
            b bVar;
            while (true) {
                int i10 = this.sampleCount;
                if (i10 < 4 || (bVar = this.oldest) == null || j6 - bVar.timestamp <= 0) {
                    return;
                }
                if (bVar.accelerating) {
                    this.acceleratingCount--;
                }
                this.sampleCount = i10 - 1;
                b bVar2 = bVar.next;
                this.oldest = bVar2;
                if (bVar2 == null) {
                    this.newest = null;
                }
                this.pool.b(bVar);
            }
        }

        d() {
        }

        void a(long j6, boolean z6) {
            d(j6 - MAX_WINDOW_SIZE);
            b bVarA = this.pool.a();
            bVarA.timestamp = j6;
            bVarA.accelerating = z6;
            bVarA.next = null;
            b bVar = this.newest;
            if (bVar != null) {
                bVar.next = bVarA;
            }
            this.newest = bVarA;
            if (this.oldest == null) {
                this.oldest = bVarA;
            }
            this.sampleCount++;
            if (z6) {
                this.acceleratingCount++;
            }
        }
    }

    public void b(int i10) {
        this.accelerationThreshold = i10;
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i10) {
    }

    static class b {
        boolean accelerating;
        b next;
        long timestamp;

        b() {
        }
    }

    private boolean a(SensorEvent sensorEvent) {
        float[] fArr = sensorEvent.values;
        float f = fArr[0];
        float f6 = fArr[1];
        float f7 = fArr[2];
        double d2 = (f * f) + (f6 * f6) + (f7 * f7);
        int i10 = this.accelerationThreshold;
        return d2 > ((double) (i10 * i10));
    }

    public boolean c(SensorManager sensorManager) {
        if (this.accelerometer != null) {
            return true;
        }
        Sensor defaultSensor = sensorManager.getDefaultSensor(1);
        this.accelerometer = defaultSensor;
        if (defaultSensor != null) {
            this.sensorManager = sensorManager;
            sensorManager.registerListener(this, defaultSensor, 0);
        }
        return this.accelerometer != null;
    }

    public void d() {
        Sensor sensor = this.accelerometer;
        if (sensor != null) {
            this.sensorManager.unregisterListener(this, sensor);
            this.sensorManager = null;
            this.accelerometer = null;
        }
    }

    public a(InterfaceC0372a interfaceC0372a) {
        this.listener = interfaceC0372a;
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        boolean zA = a(sensorEvent);
        this.queue.a(sensorEvent.timestamp, zA);
        if (this.queue.c()) {
            this.queue.b();
            this.listener.hearShake();
        }
    }
}
