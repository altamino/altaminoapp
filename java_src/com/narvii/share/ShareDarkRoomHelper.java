package com.narvii.share;

import android.app.Activity;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.narvii.app.NVContext;
import com.narvii.util.crashlytics.OomHelper;
import com.narvii.util.image.Screenshot;
import com.narvii.util.statistics.TmpValue;

/* loaded from: classes3.dex */
public class ShareDarkRoomHelper {
    private static final TmpValue<Drawable> SHARE_BACKGROUND = new TmpValue<>();
    private NVContext ctx;

    public ShareDarkRoomHelper(NVContext nVContext) {
        this.ctx = nVContext;
    }

    public Drawable getDynamicThemeBg() {
        return SHARE_BACKGROUND.getAndRemove();
    }

    public void saveDynamicThemeBg(Activity activity) {
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
}
