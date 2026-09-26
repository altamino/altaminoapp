package ai.medialab.medialabads2.banners;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class MediaLabSharedBanner extends FrameLayout {
    public MediaLabSharedBanner(Context context) {
        super(context);
    }

    public MediaLabSharedBanner(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MediaLabSharedBanner(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }

    public void addCustomTargetingValue(String str, String str2) {
    }

    public float getAdaptiveHeightDp() {
        return 0.0f;
    }

    public void pause() {
    }

    public void setBannerLoadListener(BannerLoadListener bannerLoadListener) {
    }

    public void setDeveloperInfoListener(WeakReference weakReference) {
    }
}
