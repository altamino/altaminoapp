package ai.medialab.medialabads2.banners;

import ai.medialab.medialabads2.data.AdSize;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes.dex */
public class MediaLabAdView extends FrameLayout {
    public MediaLabAdView(Context context) {
        super(context);
    }

    public MediaLabAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MediaLabAdView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }

    public static void initialize$default(MediaLabAdView mediaLabAdView, String str, AdSize adSize, boolean z6, boolean z10, BannerLoadListener bannerLoadListener, int i10, Object obj) {
    }

    public void addFriendlyObstruction(View view) {
    }

    public void clearFriendlyObstructions() {
    }

    public void initialize(String str, AdSize adSize) {
    }

    public void removeFriendlyObstruction(View view) {
    }

    public boolean showPreloadedAd() {
        return false;
    }
}
