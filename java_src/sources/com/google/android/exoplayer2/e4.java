package com.google.android.exoplayer2;

import android.os.Bundle;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes11.dex */
public final class e4 implements h {
    private static final int FIELD_TRACK_GROUPS = 0;
    private final com.google.common.collect.a0<a> groups;
    public static final e4 EMPTY = new e4(com.google.common.collect.a0.x());
    public static final h.a<e4> CREATOR = new h.a() { // from class: com.google.android.exoplayer2.c4
        @Override // com.google.android.exoplayer2.h.a
        public final h a(Bundle bundle) {
            return e4.f(bundle);
        }
    };

    public static final class a implements h {
        public static final h.a<a> CREATOR = new h.a() { // from class: com.google.android.exoplayer2.d4
            @Override // com.google.android.exoplayer2.h.a
            public final h a(Bundle bundle) {
                return e4.a.j(bundle);
            }
        };
        private static final int FIELD_ADAPTIVE_SUPPORTED = 4;
        private static final int FIELD_TRACK_GROUP = 0;
        private static final int FIELD_TRACK_SELECTED = 3;
        private static final int FIELD_TRACK_SUPPORT = 1;
        private final boolean adaptiveSupported;
        public final int length;
        private final com.google.android.exoplayer2.source.f1 mediaTrackGroup;
        private final boolean[] trackSelected;
        private final int[] trackSupport;

        public com.google.android.exoplayer2.source.f1 b() {
            return this.mediaTrackGroup;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.adaptiveSupported == aVar.adaptiveSupported && this.mediaTrackGroup.equals(aVar.mediaTrackGroup) && Arrays.equals(this.trackSupport, aVar.trackSupport) && Arrays.equals(this.trackSelected, aVar.trackSelected);
        }

        public boolean g(int i10) {
            return h(i10, false);
        }

        private static String i(int i10) {
            return Integer.toString(i10, 36);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ a j(Bundle bundle) {
            com.google.android.exoplayer2.source.f1 f1Var = (com.google.android.exoplayer2.source.f1) com.google.android.exoplayer2.source.f1.CREATOR.a((Bundle) com.google.android.exoplayer2.util.a.e(bundle.getBundle(i(0))));
            return new a(f1Var, bundle.getBoolean(i(4), false), (int[]) com.google.common.base.i.a(bundle.getIntArray(i(1)), new int[f1Var.length]), (boolean[]) com.google.common.base.i.a(bundle.getBooleanArray(i(3)), new boolean[f1Var.length]));
        }

        public a2 c(int i10) {
            return this.mediaTrackGroup.c(i10);
        }

        public int d() {
            return this.mediaTrackGroup.type;
        }

        public boolean e() {
            return com.google.common.primitives.a.b(this.trackSelected, true);
        }

        public boolean f(int i10) {
            return this.trackSelected[i10];
        }

        public boolean h(int i10, boolean z6) {
            int i11 = this.trackSupport[i10];
            return i11 == 4 || (z6 && i11 == 3);
        }

        public int hashCode() {
            return (((((this.mediaTrackGroup.hashCode() * 31) + (this.adaptiveSupported ? 1 : 0)) * 31) + Arrays.hashCode(this.trackSupport)) * 31) + Arrays.hashCode(this.trackSelected);
        }

        @Override // com.google.android.exoplayer2.h
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putBundle(i(0), this.mediaTrackGroup.toBundle());
            bundle.putIntArray(i(1), this.trackSupport);
            bundle.putBooleanArray(i(3), this.trackSelected);
            bundle.putBoolean(i(4), this.adaptiveSupported);
            return bundle;
        }

        public a(com.google.android.exoplayer2.source.f1 f1Var, boolean z6, int[] iArr, boolean[] zArr) {
            boolean z10;
            int i10 = f1Var.length;
            this.length = i10;
            boolean z11 = false;
            if (i10 == iArr.length && i10 == zArr.length) {
                z10 = true;
            } else {
                z10 = false;
            }
            com.google.android.exoplayer2.util.a.a(z10);
            this.mediaTrackGroup = f1Var;
            if (z6 && i10 > 1) {
                z11 = true;
            }
            this.adaptiveSupported = z11;
            this.trackSupport = (int[]) iArr.clone();
            this.trackSelected = (boolean[]) zArr.clone();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ e4 f(Bundle bundle) {
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(e(0));
        return new e4(parcelableArrayList == null ? com.google.common.collect.a0.x() : com.google.android.exoplayer2.util.c.b(a.CREATOR, parcelableArrayList));
    }

    public com.google.common.collect.a0<a> b() {
        return this.groups;
    }

    public boolean d(int i10) {
        for (int i11 = 0; i11 < this.groups.size(); i11++) {
            a aVar = this.groups.get(i11);
            if (aVar.e() && aVar.d() == i10) {
                return true;
            }
        }
        return false;
    }

    private static String e(int i10) {
        return Integer.toString(i10, 36);
    }

    public boolean c() {
        return this.groups.isEmpty();
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || e4.class != obj.getClass()) {
            return false;
        }
        return this.groups.equals(((e4) obj).groups);
    }

    public int hashCode() {
        return this.groups.hashCode();
    }

    @Override // com.google.android.exoplayer2.h
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList(e(0), com.google.android.exoplayer2.util.c.d(this.groups));
        return bundle;
    }

    public e4(List<a> list) {
        this.groups = com.google.common.collect.a0.t(list);
    }
}
