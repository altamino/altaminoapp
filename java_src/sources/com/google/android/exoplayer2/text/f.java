package com.google.android.exoplayer2.text;

import android.os.Bundle;
import com.google.common.collect.a0;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public final class f implements com.google.android.exoplayer2.h {
    private static final int FIELD_CUES = 0;
    private static final int FIELD_PRESENTATION_TIME_US = 1;
    public final a0<b> cues;
    public final long presentationTimeUs;
    public static final f EMPTY_TIME_ZERO = new f(a0.x(), 0);
    public static final com.google.android.exoplayer2.h.a<f> CREATOR = new com.google.android.exoplayer2.h.a() { // from class: com.google.android.exoplayer2.text.e
        @Override // com.google.android.exoplayer2.h.a
        public final com.google.android.exoplayer2.h a(Bundle bundle) {
            return f.c(bundle);
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public static final f c(Bundle bundle) {
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(d(0));
        return new f(parcelableArrayList == null ? a0.x() : com.google.android.exoplayer2.util.c.b(b.CREATOR, parcelableArrayList), bundle.getLong(d(1)));
    }

    private static String d(int i10) {
        return Integer.toString(i10, 36);
    }

    @Override // com.google.android.exoplayer2.h
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList(d(0), com.google.android.exoplayer2.util.c.d(b(this.cues)));
        bundle.putLong(d(1), this.presentationTimeUs);
        return bundle;
    }

    public f(List<b> list, long j6) {
        this.cues = a0.t(list);
        this.presentationTimeUs = j6;
    }

    private static a0<b> b(List<b> list) {
        a0.a aVarR = a0.r();
        for (int i10 = 0; i10 < list.size(); i10++) {
            if (list.get(i10).bitmap == null) {
                aVarR.d(list.get(i10));
            }
        }
        return aVarR.k();
    }
}
