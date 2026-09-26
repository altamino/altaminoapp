package androidx.media3.common;

import android.os.Bundle;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;

/* JADX INFO: loaded from: classes11.dex */
public abstract class Rating implements Bundleable {
    static final int RATING_TYPE_HEART = 0;
    static final int RATING_TYPE_PERCENTAGE = 1;
    static final int RATING_TYPE_STAR = 2;
    static final int RATING_TYPE_THUMB = 3;
    static final int RATING_TYPE_UNSET = -1;
    static final float RATING_UNSET = -1.0f;
    static final String FIELD_RATING_TYPE = Util.z0(0);

    @UnstableApi
    public static final Bundleable.Creator<Rating> CREATOR = new Bundleable.Creator() { // from class: androidx.media3.common.e0
        @Override // androidx.media3.common.Bundleable.Creator
        public final Bundleable a(Bundle bundle) {
            return Rating.b(bundle);
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public static Rating b(Bundle bundle) {
        int i10 = bundle.getInt(FIELD_RATING_TYPE, -1);
        if (i10 == 0) {
            return (Rating) HeartRating.CREATOR.a(bundle);
        }
        if (i10 == 1) {
            return (Rating) PercentageRating.CREATOR.a(bundle);
        }
        if (i10 == 2) {
            return (Rating) StarRating.CREATOR.a(bundle);
        }
        if (i10 == 3) {
            return (Rating) ThumbRating.CREATOR.a(bundle);
        }
        throw new IllegalArgumentException("Unknown RatingType: " + i10);
    }

    Rating() {
    }
}
