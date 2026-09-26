package androidx.media3.common;

import android.os.Bundle;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;

/* JADX INFO: loaded from: classes10.dex */
public final class StarRating extends Rating {
    private static final int MAX_STARS_DEFAULT = 5;
    private static final int TYPE = 2;

    @IntRange
    private final int maxStars;
    private final float starRating;
    private static final String FIELD_MAX_STARS = Util.z0(1);
    private static final String FIELD_STAR_RATING = Util.z0(2);

    @UnstableApi
    public static final Bundleable.Creator<StarRating> CREATOR = new Bundleable.Creator() { // from class: androidx.media3.common.c2
        @Override // androidx.media3.common.Bundleable.Creator
        public final Bundleable a(Bundle bundle) {
            return StarRating.d(bundle);
        }
    };

    public StarRating(@IntRange int i10) {
        Assertions.b(i10 > 0, "maxStars must be a positive integer");
        this.maxStars = i10;
        this.starRating = -1.0f;
    }

    public int hashCode() {
        return com.google.common.base.k.b(Integer.valueOf(this.maxStars), Float.valueOf(this.starRating));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static StarRating d(Bundle bundle) {
        Assertions.a(bundle.getInt(Rating.FIELD_RATING_TYPE, -1) == 2);
        int i10 = bundle.getInt(FIELD_MAX_STARS, 5);
        float f = bundle.getFloat(FIELD_STAR_RATING, -1.0f);
        return f == -1.0f ? new StarRating(i10) : new StarRating(i10, f);
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof StarRating)) {
            return false;
        }
        StarRating starRating = (StarRating) obj;
        return this.maxStars == starRating.maxStars && this.starRating == starRating.starRating;
    }

    @Override // androidx.media3.common.Bundleable
    @UnstableApi
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(Rating.FIELD_RATING_TYPE, 2);
        bundle.putInt(FIELD_MAX_STARS, this.maxStars);
        bundle.putFloat(FIELD_STAR_RATING, this.starRating);
        return bundle;
    }

    public StarRating(@IntRange int i10, @FloatRange float f) {
        Assertions.b(i10 > 0, "maxStars must be a positive integer");
        Assertions.b(f >= 0.0f && f <= ((float) i10), "starRating is out of range [0, maxStars]");
        this.maxStars = i10;
        this.starRating = f;
    }
}
