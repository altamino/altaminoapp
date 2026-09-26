package io.agora.rtc.video;

import android.content.Context;
import android.view.SurfaceHolder;
import android.view.SurfaceView;

/* JADX INFO: loaded from: classes11.dex */
public class ViERenderer {
    private static SurfaceHolder g_localRenderer;

    public static SurfaceHolder GetLocalRenderer() {
        return g_localRenderer;
    }

    public static SurfaceView CreateLocalRenderer(Context context) {
        return new SurfaceView(context);
    }

    public static void setLocalView(SurfaceView local, int top, int left, int width, int height) {
        if (local == null) {
            g_localRenderer = null;
        } else {
            g_localRenderer = local.getHolder();
        }
    }
}
