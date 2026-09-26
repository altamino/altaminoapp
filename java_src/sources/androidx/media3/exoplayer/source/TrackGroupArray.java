package androidx.media3.exoplayer.source;

import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.media3.common.Bundleable;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.util.BundleableUtil;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes11.dex */
@UnstableApi
public final class TrackGroupArray implements Bundleable {
    private static final String TAG = "TrackGroupArray";
    private int hashCode;
    public final int length;
    private final com.google.common.collect.a0<TrackGroup> trackGroups;
    public static final TrackGroupArray EMPTY = new TrackGroupArray(new TrackGroup[0]);
    private static final String FIELD_TRACK_GROUPS = Util.z0(0);
    public static final Bundleable.Creator<TrackGroupArray> CREATOR = new Bundleable.Creator() { // from class: androidx.media3.exoplayer.source.c0
        @Override // androidx.media3.common.Bundleable.Creator
        public final Bundleable a(Bundle bundle) {
            return TrackGroupArray.d(bundle);
        }
    };

    private void e() {
        int i10 = 0;
        while (i10 < this.trackGroups.size()) {
            int i11 = i10 + 1;
            for (int i12 = i11; i12 < this.trackGroups.size(); i12++) {
                if (this.trackGroups.get(i10).equals(this.trackGroups.get(i12))) {
                    Log.d(TAG, "", new IllegalArgumentException("Multiple identical TrackGroups added to one TrackGroupArray."));
                }
            }
            i10 = i11;
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || TrackGroupArray.class != obj.getClass()) {
            return false;
        }
        TrackGroupArray trackGroupArray = (TrackGroupArray) obj;
        return this.length == trackGroupArray.length && this.trackGroups.equals(trackGroupArray.trackGroups);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ TrackGroupArray d(Bundle bundle) {
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(FIELD_TRACK_GROUPS);
        return parcelableArrayList == null ? new TrackGroupArray(new TrackGroup[0]) : new TrackGroupArray((TrackGroup[]) BundleableUtil.d(TrackGroup.CREATOR, parcelableArrayList).toArray(new TrackGroup[0]));
    }

    public TrackGroup b(int i10) {
        return this.trackGroups.get(i10);
    }

    public int c(TrackGroup trackGroup) {
        int iIndexOf = this.trackGroups.indexOf(trackGroup);
        if (iIndexOf >= 0) {
            return iIndexOf;
        }
        return -1;
    }

    public int hashCode() {
        if (this.hashCode == 0) {
            this.hashCode = this.trackGroups.hashCode();
        }
        return this.hashCode;
    }

    @Override // androidx.media3.common.Bundleable
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList(FIELD_TRACK_GROUPS, BundleableUtil.i(this.trackGroups));
        return bundle;
    }

    public TrackGroupArray(TrackGroup... trackGroupArr) {
        this.trackGroups = com.google.common.collect.a0.u(trackGroupArr);
        this.length = trackGroupArr.length;
        e();
    }
}
