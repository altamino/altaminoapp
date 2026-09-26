package com.google.android.exoplayer2;

import android.os.Bundle;

/* JADX INFO: loaded from: classes11.dex */
public abstract class k3 implements h {
    public static final h.a<k3> CREATOR = new h.a() { // from class: com.google.android.exoplayer2.j3
        @Override // com.google.android.exoplayer2.h.a
        public final h a(Bundle bundle) {
            return k3.b(bundle);
        }
    };
    static final int FIELD_RATING_TYPE = 0;
    static final int RATING_TYPE_HEART = 0;
    static final int RATING_TYPE_PERCENTAGE = 1;
    static final int RATING_TYPE_STAR = 2;
    static final int RATING_TYPE_THUMB = 3;
    static final int RATING_TYPE_UNSET = -1;
    static final float RATING_UNSET = -1.0f;

    /* JADX INFO: Access modifiers changed from: private */
    public static k3 b(Bundle bundle) {
        int i10 = bundle.getInt(c(0), -1);
        if (i10 == 0) {
            return (k3) d2.CREATOR.a(bundle);
        }
        if (i10 == 1) {
            return (k3) x2.CREATOR.a(bundle);
        }
        if (i10 == 2) {
            return (k3) t3.CREATOR.a(bundle);
        }
        if (i10 == 3) {
            return (k3) x3.CREATOR.a(bundle);
        }
        throw new IllegalArgumentException("Unknown RatingType: " + i10);
    }

    private static String c(int i10) {
        return Integer.toString(i10, 36);
    }

    k3() {
    }
}
