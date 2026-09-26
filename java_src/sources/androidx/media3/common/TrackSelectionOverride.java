package androidx.media3.common;

import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public final class TrackSelectionOverride implements Bundleable {
    public final TrackGroup mediaTrackGroup;
    public final com.google.common.collect.a0<Integer> trackIndices;
    private static final String FIELD_TRACK_GROUP = Util.z0(0);
    private static final String FIELD_TRACKS = Util.z0(1);

    @UnstableApi
    public static final Bundleable.Creator<TrackSelectionOverride> CREATOR = new Bundleable.Creator() { // from class: androidx.media3.common.i2
        @Override // androidx.media3.common.Bundleable.Creator
        public final Bundleable a(Bundle bundle) {
            return TrackSelectionOverride.c(bundle);
        }
    };

    public TrackSelectionOverride(TrackGroup trackGroup, int i10) {
        this(trackGroup, com.google.common.collect.a0.y(Integer.valueOf(i10)));
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || TrackSelectionOverride.class != obj.getClass()) {
            return false;
        }
        TrackSelectionOverride trackSelectionOverride = (TrackSelectionOverride) obj;
        return this.mediaTrackGroup.equals(trackSelectionOverride.mediaTrackGroup) && this.trackIndices.equals(trackSelectionOverride.trackIndices);
    }

    public TrackSelectionOverride(TrackGroup trackGroup, List<Integer> list) {
        if (!list.isEmpty() && (((Integer) Collections.min(list)).intValue() < 0 || ((Integer) Collections.max(list)).intValue() >= trackGroup.length)) {
            throw new IndexOutOfBoundsException();
        }
        this.mediaTrackGroup = trackGroup;
        this.trackIndices = com.google.common.collect.a0.t(list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ TrackSelectionOverride c(Bundle bundle) {
        return new TrackSelectionOverride((TrackGroup) TrackGroup.CREATOR.a((Bundle) Assertions.e(bundle.getBundle(FIELD_TRACK_GROUP))), com.google.common.primitives.e.c((int[]) Assertions.e(bundle.getIntArray(FIELD_TRACKS))));
    }

    public int b() {
        return this.mediaTrackGroup.type;
    }

    public int hashCode() {
        return this.mediaTrackGroup.hashCode() + (this.trackIndices.hashCode() * 31);
    }

    @Override // androidx.media3.common.Bundleable
    @UnstableApi
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putBundle(FIELD_TRACK_GROUP, this.mediaTrackGroup.toBundle());
        bundle.putIntArray(FIELD_TRACKS, com.google.common.primitives.e.l(this.trackIndices));
        return bundle;
    }
}
