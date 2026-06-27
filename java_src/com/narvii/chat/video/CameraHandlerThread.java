package com.narvii.chat.video;

import android.hardware.Camera;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.narvii.video.ui.camera.CameraUtils;
import java.lang.ref.WeakReference;

/* loaded from: classes2.dex */
public class CameraHandlerThread extends HandlerThread {
    private static final String LOG_TAG = "CameraHandlerThread";
    Handler localHandler;
    private WeakReference<CameraRenderer> renderer;

    public CameraHandlerThread(CameraRenderer cameraRenderer) {
        super(LOG_TAG);
        this.renderer = new WeakReference<>(cameraRenderer);
        start();
        this.localHandler = new Handler(getLooper());
    }

    public void startCamera(final int i) {
        this.localHandler.post(new Runnable() { // from class: com.narvii.chat.video.CameraHandlerThread.1
            @Override // java.lang.Runnable
            public void run() throws InterruptedException {
                final Camera cameraInstance = CameraUtils.getCameraInstance(i);
                if (cameraInstance == null) {
                    for (int i2 = 0; cameraInstance == null && i2 < 3; i2++) {
                        try {
                            Thread.sleep(200L);
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }
                        cameraInstance = CameraUtils.getCameraInstance(i);
                    }
                }
                Handler handler = new Handler(Looper.getMainLooper());
                if (CameraHandlerThread.this.renderer.get() != null) {
                    handler.post(new Runnable() { // from class: com.narvii.chat.video.CameraHandlerThread.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                ((CameraRenderer) CameraHandlerThread.this.renderer.get()).setupCameraPreview(cameraInstance, i);
                            } catch (Exception e2) {
                                e2.printStackTrace();
                            }
                        }
                    });
                }
            }
        });
    }
}
