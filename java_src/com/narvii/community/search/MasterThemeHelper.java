package com.narvii.community.search;

import android.app.Activity;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.util.crashlytics.OomHelper;
import com.narvii.util.image.Screenshot;
import com.narvii.util.statistics.TmpValue;

/* loaded from: classes2.dex */
public class MasterThemeHelper {
    private static final TmpValue<Drawable> DYNAMICTHEMEBG = new TmpValue<>();
    private NVContext ctx;

    public MasterThemeHelper(NVContext nVContext) {
        this.ctx = nVContext;
    }

    public Drawable getDynamicThemeBg() {
        Drawable andRemove = DYNAMICTHEMEBG.getAndRemove();
        return andRemove == null ? this.ctx.getContext().getResources().getDrawable(R.drawable.master_default_bg) : andRemove;
    }

    public void saveDynamicThemeBg(Activity activity) {
        if (activity == null) {
            return;
        }
        try {
            DYNAMICTHEMEBG.set(new BitmapDrawable(Screenshot.takeScreenshot(activity, 0.25f, 0, 0)), 1000L);
        } catch (Exception unused) {
        } catch (OutOfMemoryError e) {
            OomHelper.test(e);
        }
    }

    public void saveDynamicThemeBg(Drawable drawable) {
        DYNAMICTHEMEBG.set(drawable, 1000L);
    }
}
