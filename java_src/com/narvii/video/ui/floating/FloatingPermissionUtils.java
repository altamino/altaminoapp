package com.narvii.video.ui.floating;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;

/* loaded from: classes3.dex */
public class FloatingPermissionUtils {
    public static final int OVERLAY_PERMISSION_REQUEST_CODE = 102;
    private Context context;

    public interface Callback {
        void call(Intent intent);
    }

    public FloatingPermissionUtils(Context context) {
        this.context = context;
    }

    public boolean canDrawOverlays() {
        if (Build.VERSION.SDK_INT >= 23) {
            return Settings.canDrawOverlays(this.context);
        }
        return true;
    }

    public void requestDrawOverlays(Callback callback) {
        if (Build.VERSION.SDK_INT < 23 || canDrawOverlays()) {
            if (callback != null) {
                callback.call(null);
                return;
            }
            return;
        }
        Intent intent = new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.parse("package:" + this.context.getPackageName()));
        if (callback != null) {
            callback.call(intent);
        }
    }
}
