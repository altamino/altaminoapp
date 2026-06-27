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

/* loaded from: classes3.dex */
public class ScreenRotateHelper {
    public static final int ROTATION_THRESHOLD = 15;
    Context context;
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
                int i = screenRotateHelper.orientationInfo;
                if (i == -1) {
                    screenRotateHelper.orientationInfo = orientationInfo;
                    return;
                }
                if (i != orientationInfo) {
                    screenRotateHelper.orientationInfo = orientationInfo;
                    int i2 = screenRotateHelper.orientationInfo;
                    if (i2 == 9 || i2 == 14 || screenRotateHelper.requestOrientationListener == null || !screenRotateHelper.isMonitorEnabled) {
                        return;
                    }
                    ScreenRotateHelper screenRotateHelper2 = ScreenRotateHelper.this;
                    screenRotateHelper2.requestOrientationListener.requestOrientation(screenRotateHelper2.orientationInfo);
                }
            }
        }
    };
    private OrientationSensorListener listener = new OrientationSensorListener(this.mHandler);
    private boolean isMonitorEnabled = true;

    /* JADX INFO: Access modifiers changed from: private */
    public int getOrientationInfo(int i) {
        if (i > 75 && i < 105) {
            return 8;
        }
        if (i > 165 && i < 195) {
            return 9;
        }
        if (i > 255 && i < 285) {
            return 0;
        }
        if (i <= 345 || i > 360) {
            return (i < 0 || i >= 15) ? 14 : 1;
        }
        return 1;
    }

    public ScreenRotateHelper(Context context, RequestOrientationListener requestOrientationListener) {
        this.context = context;
        this.sm = (SensorManager) context.getSystemService("sensor");
        this.sensor = this.sm.getDefaultSensor(9);
        this.requestOrientationListener = requestOrientationListener;
    }

    public void setMonitorEnabled(boolean z) {
        this.isMonitorEnabled = z;
    }

    public class OrientationSensorListener implements SensorEventListener {
        public static final int ORIENTATION_UNKNOWN = -1;
        private static final int _DATA_X = 0;
        private static final int _DATA_Y = 1;
        private static final int _DATA_Z = 2;
        private Handler rotateHandler;

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i) {
        }

        public OrientationSensorListener(Handler handler) {
            this.rotateHandler = handler;
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            int iRound;
            float[] fArr = sensorEvent.values;
            float f = -fArr[0];
            float f2 = -fArr[1];
            float f3 = -fArr[2];
            if (((f * f) + (f2 * f2)) * 4.0f >= f3 * f3) {
                iRound = 90 - Math.round(((float) Math.atan2(-f2, f)) * 57.29578f);
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

    public void start() {
        this.sm.registerListener(this.listener, this.sensor, 2);
    }

    public void stop() {
        this.sm.unregisterListener(this.listener);
        this.orientationInfo = -1;
    }
}
