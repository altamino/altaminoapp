package androidx.media3.common;

import android.os.Bundle;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;

/* JADX INFO: loaded from: classes11.dex */
public final class PercentageRating extends Rating {
    private static final int TYPE = 1;
    private final float percent;
    private static final String FIELD_PERCENT = Util.z0(1);

    @UnstableApi
    public static final Bundleable.Creator<PercentageRating> CREATOR = new Bundleable.Creator() { // from class: androidx.media3.common.y
        @Override // androidx.media3.common.Bundleable.Creator
        public final Bundleable a(Bundle bundle) {
            return PercentageRating.d(bundle);
        }
    };

    public PercentageRating() {
        this.percent = -1.0f;
    }

    public int hashCode() {
        return com.google.common.base.k.b(Float.valueOf(this.percent));
    }

    public PercentageRating(@FloatRange float f) {
        Assertions.b(f >= 0.0f && f <= 100.0f, "percent must be in the range of [0, 100]");
        this.percent = f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static PercentageRating d(Bundle bundle) {
        Assertions.a(bundle.getInt(Rating.FIELD_RATING_TYPE, -1) == 1);
        float f = bundle.getFloat(FIELD_PERCENT, -1.0f);
        return f == -1.0f ? new PercentageRating() : new PercentageRating(f);
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof PercentageRating) && this.percent == ((PercentageRating) obj).percent;
    }

    @Override // androidx.media3.common.Bundleable
    @UnstableApi
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(Rating.FIELD_RATING_TYPE, 1);
        bundle.putFloat(FIELD_PERCENT, this.percent);
        return bundle;
    }
}
