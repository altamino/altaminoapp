package androidx.media3.common;

import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.BundleableUtil;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public final class Tracks implements Bundleable {
    private final com.google.common.collect.a0<Group> groups;
    public static final Tracks EMPTY = new Tracks(com.google.common.collect.a0.x());
    private static final String FIELD_TRACK_GROUPS = Util.z0(0);

    @UnstableApi
    public static final Bundleable.Creator<Tracks> CREATOR = new Bundleable.Creator() { // from class: androidx.media3.common.k2
        @Override // androidx.media3.common.Bundleable.Creator
        public final Bundleable a(Bundle bundle) {
            return Tracks.g(bundle);
        }
    };

    public static final class Group implements Bundleable {
        private final boolean adaptiveSupported;
        public final int length;
        private final TrackGroup mediaTrackGroup;
        private final boolean[] trackSelected;
        private final int[] trackSupport;
        private static final String FIELD_TRACK_GROUP = Util.z0(0);
        private static final String FIELD_TRACK_SUPPORT = Util.z0(1);
        private static final String FIELD_TRACK_SELECTED = Util.z0(3);
        private static final String FIELD_ADAPTIVE_SUPPORTED = Util.z0(4);

        @UnstableApi
        public static final Bundleable.Creator<Group> CREATOR = new Bundleable.Creator() { // from class: androidx.media3.common.l2
            @Override // androidx.media3.common.Bundleable.Creator
            public final Bundleable a(Bundle bundle) {
                return Tracks.Group.l(bundle);
            }
        };

        public TrackGroup b() {
            return this.mediaTrackGroup;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || Group.class != obj.getClass()) {
                return false;
            }
            Group group = (Group) obj;
            return this.adaptiveSupported == group.adaptiveSupported && this.mediaTrackGroup.equals(group.mediaTrackGroup) && Arrays.equals(this.trackSupport, group.trackSupport) && Arrays.equals(this.trackSelected, group.trackSelected);
        }

        public boolean f() {
            return this.adaptiveSupported;
        }

        public boolean h(boolean z6) {
            for (int i10 = 0; i10 < this.trackSupport.length; i10++) {
                if (k(i10, z6)) {
                    return true;
                }
            }
            return false;
        }

        public boolean j(int i10) {
            return k(i10, false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ Group l(Bundle bundle) {
            TrackGroup trackGroup = (TrackGroup) TrackGroup.CREATOR.a((Bundle) Assertions.e(bundle.getBundle(FIELD_TRACK_GROUP)));
            return new Group(trackGroup, bundle.getBoolean(FIELD_ADAPTIVE_SUPPORTED, false), (int[]) com.google.common.base.i.a(bundle.getIntArray(FIELD_TRACK_SUPPORT), new int[trackGroup.length]), (boolean[]) com.google.common.base.i.a(bundle.getBooleanArray(FIELD_TRACK_SELECTED), new boolean[trackGroup.length]));
        }

        public Format c(int i10) {
            return this.mediaTrackGroup.c(i10);
        }

        @UnstableApi
        public int d(int i10) {
            return this.trackSupport[i10];
        }

        public int e() {
            return this.mediaTrackGroup.type;
        }

        public boolean g() {
            return com.google.common.primitives.a.b(this.trackSelected, true);
        }

        public int hashCode() {
            return (((((this.mediaTrackGroup.hashCode() * 31) + (this.adaptiveSupported ? 1 : 0)) * 31) + Arrays.hashCode(this.trackSupport)) * 31) + Arrays.hashCode(this.trackSelected);
        }

        public boolean i(int i10) {
            return this.trackSelected[i10];
        }

        public boolean k(int i10, boolean z6) {
            int i11 = this.trackSupport[i10];
            return i11 == 4 || (z6 && i11 == 3);
        }

        @Override // androidx.media3.common.Bundleable
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putBundle(FIELD_TRACK_GROUP, this.mediaTrackGroup.toBundle());
            bundle.putIntArray(FIELD_TRACK_SUPPORT, this.trackSupport);
            bundle.putBooleanArray(FIELD_TRACK_SELECTED, this.trackSelected);
            bundle.putBoolean(FIELD_ADAPTIVE_SUPPORTED, this.adaptiveSupported);
            return bundle;
        }

        @UnstableApi
        public Group(TrackGroup trackGroup, boolean z6, int[] iArr, boolean[] zArr) {
            boolean z10;
            int i10 = trackGroup.length;
            this.length = i10;
            boolean z11 = false;
            if (i10 == iArr.length && i10 == zArr.length) {
                z10 = true;
            } else {
                z10 = false;
            }
            Assertions.a(z10);
            this.mediaTrackGroup = trackGroup;
            if (z6 && i10 > 1) {
                z11 = true;
            }
            this.adaptiveSupported = z11;
            this.trackSupport = (int[]) iArr.clone();
            this.trackSelected = (boolean[]) zArr.clone();
        }
    }

    public com.google.common.collect.a0<Group> b() {
        return this.groups;
    }

    public boolean d(int i10) {
        for (int i11 = 0; i11 < this.groups.size(); i11++) {
            Group group = this.groups.get(i11);
            if (group.g() && group.e() == i10) {
                return true;
            }
        }
        return false;
    }

    public boolean e(int i10) {
        return f(i10, false);
    }

    public boolean f(int i10, boolean z6) {
        for (int i11 = 0; i11 < this.groups.size(); i11++) {
            if (this.groups.get(i11).e() == i10 && this.groups.get(i11).h(z6)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Tracks g(Bundle bundle) {
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(FIELD_TRACK_GROUPS);
        return new Tracks(parcelableArrayList == null ? com.google.common.collect.a0.x() : BundleableUtil.d(Group.CREATOR, parcelableArrayList));
    }

    public boolean c() {
        return this.groups.isEmpty();
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Tracks.class != obj.getClass()) {
            return false;
        }
        return this.groups.equals(((Tracks) obj).groups);
    }

    public int hashCode() {
        return this.groups.hashCode();
    }

    @Override // androidx.media3.common.Bundleable
    @UnstableApi
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList(FIELD_TRACK_GROUPS, BundleableUtil.i(this.groups));
        return bundle;
    }

    @UnstableApi
    public Tracks(List<Group> list) {
        this.groups = com.google.common.collect.a0.t(list);
    }
}
