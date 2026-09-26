package ai.medialab.medialabads2.banners;

import android.content.Context;
import android.util.AttributeSet;
import androidx.lifecycle.LifecycleObserver;

/* JADX INFO: loaded from: classes.dex */
public class MediaLabSingletonBanner extends MediaLabSharedBanner implements LifecycleObserver {
    public MediaLabSingletonBanner(Context context) {
        super(context);
    }

    public MediaLabSingletonBanner(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
