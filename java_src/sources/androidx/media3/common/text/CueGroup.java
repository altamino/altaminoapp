package androidx.media3.common.text;

import android.os.Bundle;
import androidx.media3.common.Bundleable;
import androidx.media3.common.util.BundleableUtil;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import com.google.common.collect.a0;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public final class CueGroup implements Bundleable {
    public final a0<Cue> cues;

    @UnstableApi
    public final long presentationTimeUs;

    @UnstableApi
    public static final CueGroup EMPTY_TIME_ZERO = new CueGroup(a0.x(), 0);
    private static final String FIELD_CUES = Util.z0(0);
    private static final String FIELD_PRESENTATION_TIME_US = Util.z0(1);

    @UnstableApi
    public static final Bundleable.Creator<CueGroup> CREATOR = new Bundleable.Creator() { // from class: androidx.media3.common.text.b
        @Override // androidx.media3.common.Bundleable.Creator
        public final Bundleable a(Bundle bundle) {
            return CueGroup.c(bundle);
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public static final CueGroup c(Bundle bundle) {
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(FIELD_CUES);
        return new CueGroup(parcelableArrayList == null ? a0.x() : BundleableUtil.d(Cue.CREATOR, parcelableArrayList), bundle.getLong(FIELD_PRESENTATION_TIME_US));
    }

    @Override // androidx.media3.common.Bundleable
    @UnstableApi
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList(FIELD_CUES, BundleableUtil.i(b(this.cues)));
        bundle.putLong(FIELD_PRESENTATION_TIME_US, this.presentationTimeUs);
        return bundle;
    }

    @UnstableApi
    public CueGroup(List<Cue> list, long j6) {
        this.cues = a0.t(list);
        this.presentationTimeUs = j6;
    }

    private static a0<Cue> b(List<Cue> list) {
        a0.a aVarR = a0.r();
        for (int i10 = 0; i10 < list.size(); i10++) {
            if (list.get(i10).bitmap == null) {
                aVarR.d(list.get(i10));
            }
        }
        return aVarR.k();
    }
}
