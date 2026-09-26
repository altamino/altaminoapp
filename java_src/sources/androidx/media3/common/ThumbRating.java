package androidx.media3.common;

import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;

/* JADX INFO: loaded from: classes11.dex */
public final class ThumbRating extends Rating {
    private static final int TYPE = 3;
    private final boolean isThumbsUp;
    private final boolean rated;
    private static final String FIELD_RATED = Util.z0(1);
    private static final String FIELD_IS_THUMBS_UP = Util.z0(2);

    @UnstableApi
    public static final Bundleable.Creator<ThumbRating> CREATOR = new Bundleable.Creator() { // from class: androidx.media3.common.d2
        @Override // androidx.media3.common.Bundleable.Creator
        public final Bundleable a(Bundle bundle) {
            return ThumbRating.d(bundle);
        }
    };

    public ThumbRating() {
        this.rated = false;
        this.isThumbsUp = false;
    }

    public int hashCode() {
        return com.google.common.base.k.b(Boolean.valueOf(this.rated), Boolean.valueOf(this.isThumbsUp));
    }

    public ThumbRating(boolean z6) {
        this.rated = true;
        this.isThumbsUp = z6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ThumbRating d(Bundle bundle) {
        Assertions.a(bundle.getInt(Rating.FIELD_RATING_TYPE, -1) == 3);
        return bundle.getBoolean(FIELD_RATED, false) ? new ThumbRating(bundle.getBoolean(FIELD_IS_THUMBS_UP, false)) : new ThumbRating();
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof ThumbRating)) {
            return false;
        }
        ThumbRating thumbRating = (ThumbRating) obj;
        return this.isThumbsUp == thumbRating.isThumbsUp && this.rated == thumbRating.rated;
    }

    @Override // androidx.media3.common.Bundleable
    @UnstableApi
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(Rating.FIELD_RATING_TYPE, 3);
        bundle.putBoolean(FIELD_RATED, this.rated);
        bundle.putBoolean(FIELD_IS_THUMBS_UP, this.isThumbsUp);
        return bundle;
    }
}
