package com.narvii.util;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.provider.Settings;

/* JADX INFO: loaded from: classes6.dex */
public class ScreenRotateHelper {
    public static final int ROTATION_THRESHOLD = 15;
    Context context;
    private boolean isMonitorEnabled;
    private OrientationSensorListener listener;
    RequestOrientationListener requestOrientationListener;
    private Sensor sensor;
    private SensorManager sm;
    int orientationInfo = -1;
    private Handler mHandler = new Handler(Looper.getMainLooper()) { // from class: com.narvii.util.ScreenRotateHelper.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 888) {
                int orientationInfo = ScreenRotateHelper.this.getOrientationInfo(message.arg1);
                if (orientationInfo == -1) {
                    return;
                }
                ScreenRotateHelper screenRotateHelper = ScreenRotateHelper.this;
                int i10 = screenRotateHelper.orientationInfo;
                if (i10 == -1) {
                    screenRotateHelper.orientationInfo = orientationInfo;
                    return;
                }
                if (i10 != orientationInfo) {
                    screenRotateHelper.orientationInfo = orientationInfo;
                    if (orientationInfo == 9 || orientationInfo == 14 || screenRotateHelper.requestOrientationListener == null || !screenRotateHelper.isMonitorEnabled) {
                        return;
                    }
                    ScreenRotateHelper screenRotateHelper2 = ScreenRotateHelper.this;
                    screenRotateHelper2.requestOrientationListener.requestOrientation(screenRotateHelper2.orientationInfo);
                }
            }
        }
    };

    public class OrientationSensorListener implements SensorEventListener {
        public static final int ORIENTATION_UNKNOWN = -1;
        private static final int _DATA_X = 0;
        private static final int _DATA_Y = 1;
        private static final int _DATA_Z = 2;
        private Handler rotateHandler;

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i10) {
        }

        public OrientationSensorListener(Handler handler) {
            this.rotateHandler = handler;
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            int iRound;
            float[] fArr = sensorEvent.values;
            float f = -fArr[0];
            float f6 = -fArr[1];
            float f7 = -fArr[2];
            if (((f * f) + (f6 * f6)) * 4.0f >= f7 * f7) {
                iRound = 90 - Math.round(((float) Math.atan2(-f6, f)) * 57.29578f);
                while (iRound >= 360) {
                    iRound -= 360;
                }
                while (iRound < 0) {
                    iRound += 360;
                }
            } else {
                iRound = -1;
            }
            if (iRound < 0) {
                return;
            }
            try {
                if (Settings.System.getInt(ScreenRotateHelper.this.context.getContentResolver(), "accelerometer_rotation") == 0) {
                    return;
                }
            } catch (Settings.SettingNotFoundException e) {
                e.printStackTrace();
            }
            Handler handler = this.rotateHandler;
            if (handler != null) {
                handler.obtainMessage(888, iRound, 0).sendToTarget();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getOrientationInfo(int i10) {
        if (i10 > 75 && i10 < 105) {
            return 8;
        }
        if (i10 > 165 && i10 < 195) {
            return 9;
        }
        if (i10 > 255 && i10 < 285) {
            return 0;
        }
        if (i10 <= 345 || i10 > 360) {
            return (i10 < 0 || i10 >= 15) ? 14 : 1;
        }
        return 1;
    }

    public void setMonitorEnabled(boolean z6) {
        this.isMonitorEnabled = z6;
    }

    public void start() {
        this.sm.registerListener(this.listener, this.sensor, 2);
    }

    public void stop() {
        this.sm.unregisterListener(this.listener);
        this.orientationInfo = -1;
    }

    public ScreenRotateHelper(Context context, RequestOrientationListener requestOrientationListener) {
        this.context = context;
        SensorManager sensorManager = (SensorManager) context.getSystemService("sensor");
        this.sm = sensorManager;
        this.sensor = sensorManager.getDefaultSensor(9);
        this.listener = new OrientationSensorListener(this.mHandler);
        this.requestOrientationListener = requestOrientationListener;
        this.isMonitorEnabled = true;
    }
}
