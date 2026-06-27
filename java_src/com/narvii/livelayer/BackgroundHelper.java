package com.narvii.livelayer;

import android.app.Activity;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.narvii.util.crashlytics.OomHelper;
import com.narvii.util.image.Screenshot;
import com.narvii.util.statistics.TmpValue;

/* loaded from: classes3.dex */
public class BackgroundHelper {
    private static final TmpValue<Drawable> SHARE_BACKGROUND = new TmpValue<>();

    public static Drawable getDynamicBackground() {
        return SHARE_BACKGROUND.getAndRemove();
    }

    public static void saveWithCapture(Activity activity) {
        if (activity == null) {
            return;
        }
        try {
            SHARE_BACKGROUND.set(new BitmapDrawable(Screenshot.takeScreenshot(activity, 0.25f, 0, 0)), 1000L);
        } catch (Exception unused) {
        } catch (OutOfMemoryError e) {
            OomHelper.test(e);
        }
    }

    public static void saveWithDrawable(Drawable drawable) {
        if (drawable == null) {
            return;
        }
        try {
            SHARE_BACKGROUND.set(drawable, 1000L);
        } catch (Exception unused) {
        } catch (OutOfMemoryError e) {
            OomHelper.test(e);
        }
    }
}
