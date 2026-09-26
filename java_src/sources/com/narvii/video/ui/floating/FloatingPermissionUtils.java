package com.narvii.video.ui.floating;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.provider.Settings;

/* JADX INFO: loaded from: classes5.dex */
public class FloatingPermissionUtils {
    public static final int OVERLAY_PERMISSION_REQUEST_CODE = 102;
    private Context context;

    public interface Callback {
        void call(Intent intent);
    }

    public boolean canDrawOverlays() {
        return Settings.canDrawOverlays(this.context);
    }

    public FloatingPermissionUtils(Context context) {
        this.context = context;
    }

    public void requestDrawOverlays(Callback callback) {
        if (!canDrawOverlays()) {
            Intent intent = new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.parse("package:" + this.context.getPackageName()));
            if (callback != null) {
                callback.call(intent);
                return;
            }
            return;
        }
        if (callback != null) {
            callback.call(null);
        }
    }
}
