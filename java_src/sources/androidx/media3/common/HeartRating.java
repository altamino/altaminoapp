package androidx.media3.common;

import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;

/* JADX INFO: loaded from: classes2.dex */
public final class HeartRating extends Rating {
    private static final int TYPE = 0;
    private final boolean isHeart;
    private final boolean rated;
    private static final String FIELD_RATED = Util.z0(1);
    private static final String FIELD_IS_HEART = Util.z0(2);

    @UnstableApi
    public static final Bundleable.Creator<HeartRating> CREATOR = new Bundleable.Creator() { // from class: androidx.media3.common.l
        @Override // androidx.media3.common.Bundleable.Creator
        public final Bundleable a(Bundle bundle) {
            return HeartRating.d(bundle);
        }
    };

    public HeartRating() {
        this.rated = false;
        this.isHeart = false;
    }

    public int hashCode() {
        return com.google.common.base.k.b(Boolean.valueOf(this.rated), Boolean.valueOf(this.isHeart));
    }

    public HeartRating(boolean z6) {
        this.rated = true;
        this.isHeart = z6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static HeartRating d(Bundle bundle) {
        Assertions.a(bundle.getInt(Rating.FIELD_RATING_TYPE, -1) == 0);
        return bundle.getBoolean(FIELD_RATED, false) ? new HeartRating(bundle.getBoolean(FIELD_IS_HEART, false)) : new HeartRating();
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof HeartRating)) {
            return false;
        }
        HeartRating heartRating = (HeartRating) obj;
        return this.isHeart == heartRating.isHeart && this.rated == heartRating.rated;
    }

    @Override // androidx.media3.common.Bundleable
    @UnstableApi
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(Rating.FIELD_RATING_TYPE, 0);
        bundle.putBoolean(FIELD_RATED, this.rated);
        bundle.putBoolean(FIELD_IS_HEART, this.isHeart);
        return bundle;
    }
}
