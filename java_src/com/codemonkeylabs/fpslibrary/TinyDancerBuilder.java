package com.codemonkeylabs.fpslibrary;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;
import android.view.Choreographer;
import android.view.Display;
import android.view.WindowManager;
import com.codemonkeylabs.fpslibrary.Foreground;
import com.codemonkeylabs.fpslibrary.ui.TinyCoach;
import com.google.android.exoplayer2.C;

/* loaded from: classes.dex */
public class TinyDancerBuilder {
    private static Foreground.Listener foregroundListener = new Foreground.Listener() { // from class: com.codemonkeylabs.fpslibrary.TinyDancerBuilder.1
        @Override // com.codemonkeylabs.fpslibrary.Foreground.Listener
        public void onBecameForeground() {
            TinyDancerBuilder.tinyCoach.show();
        }

        @Override // com.codemonkeylabs.fpslibrary.Foreground.Listener
        public void onBecameBackground() {
            TinyDancerBuilder.tinyCoach.hide(false);
        }
    };
    private static FPSConfig fpsConfig;
    private static FPSFrameCallback fpsFrameCallback;
    private static TinyCoach tinyCoach;

    protected TinyDancerBuilder() {
        fpsConfig = new FPSConfig();
    }

    private void setFrameRate(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        fpsConfig.deviceRefreshRateInMs = 1000.0f / defaultDisplay.getRefreshRate();
        fpsConfig.refreshRate = defaultDisplay.getRefreshRate();
    }

    protected static void hide(Context context) {
        fpsFrameCallback.setEnabled(false);
        Foreground.get(context).removeListener(foregroundListener);
        tinyCoach.destroy();
        tinyCoach = null;
        fpsFrameCallback = null;
        fpsConfig = null;
    }

    public void show(Context context) {
        if (overlayPermRequest(context)) {
            return;
        }
        TinyCoach tinyCoach2 = tinyCoach;
        if (tinyCoach2 != null) {
            tinyCoach2.show();
            return;
        }
        setFrameRate(context);
        tinyCoach = new TinyCoach((Application) context.getApplicationContext(), fpsConfig);
        fpsFrameCallback = new FPSFrameCallback(fpsConfig, tinyCoach);
        Choreographer.getInstance().postFrameCallback(fpsFrameCallback);
        Foreground.init((Application) context.getApplicationContext()).addListener(foregroundListener);
    }

    private boolean overlayPermRequest(Context context) {
        if (Build.VERSION.SDK_INT < 23 || Settings.canDrawOverlays(context)) {
            return false;
        }
        Intent intent = new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.parse("package:" + context.getPackageName()));
        intent.setFlags(C.ENCODING_PCM_MU_LAW);
        context.startActivity(intent);
        return true;
    }
}
