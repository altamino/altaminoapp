package com.codemonkeylabs.fpslibrary;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.provider.Settings;
import android.view.Choreographer;
import android.view.Display;
import android.view.WindowManager;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes6.dex */
public class i {
    private static d.b foregroundListener = new a();
    private static b fpsConfig;
    private static c fpsFrameCallback;
    private static com.codemonkeylabs.fpslibrary.ui.c tinyCoach;

    public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    static class a implements d.b {
        a() {
        }

        @Override // com.codemonkeylabs.fpslibrary.d.b
        public void a() {
            i.tinyCoach.e(false);
        }

        @Override // com.codemonkeylabs.fpslibrary.d.b
        public void b() {
            i.tinyCoach.f();
        }
    }

    protected static void b(Context context) {
        fpsFrameCallback.d(false);
        d.f(context).h(foregroundListener);
        tinyCoach.d();
        tinyCoach = null;
        fpsFrameCallback = null;
        fpsConfig = null;
    }

    protected i() {
        fpsConfig = new b();
    }

    private boolean c(Context context) {
        if (!Settings.canDrawOverlays(context)) {
            Intent intent = new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.parse("package:" + context.getPackageName()));
            intent.setFlags(268435456);
            safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(context, intent);
            return true;
        }
        return false;
    }

    private void d(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        fpsConfig.deviceRefreshRateInMs = 1000.0f / defaultDisplay.getRefreshRate();
        fpsConfig.refreshRate = defaultDisplay.getRefreshRate();
    }

    public void e(Context context) {
        if (c(context)) {
            return;
        }
        com.codemonkeylabs.fpslibrary.ui.c cVar = tinyCoach;
        if (cVar != null) {
            cVar.f();
            return;
        }
        d(context);
        com.codemonkeylabs.fpslibrary.ui.c cVar2 = new com.codemonkeylabs.fpslibrary.ui.c((Application) context.getApplicationContext(), fpsConfig);
        tinyCoach = cVar2;
        fpsFrameCallback = new c(fpsConfig, cVar2);
        Choreographer.getInstance().postFrameCallback(fpsFrameCallback);
        d.g((Application) context.getApplicationContext()).e(foregroundListener);
    }
}
