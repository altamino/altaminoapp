package com.google.android.exoplayer2.source;

import android.os.Bundle;
import androidx.annotation.Nullable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes7.dex */
public final class h1 implements com.google.android.exoplayer2.h {
    private static final int FIELD_TRACK_GROUPS = 0;
    private static final String TAG = "TrackGroupArray";
    private int hashCode;
    public final int length;
    private final com.google.common.collect.a0<f1> trackGroups;
    public static final h1 EMPTY = new h1(new f1[0]);
    public static final com.google.android.exoplayer2.h.a<h1> CREATOR = new com.google.android.exoplayer2.h.a() { // from class: com.google.android.exoplayer2.source.g1
        @Override // com.google.android.exoplayer2.h.a
        public final com.google.android.exoplayer2.h a(Bundle bundle) {
            return h1.e(bundle);
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ h1 e(Bundle bundle) {
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(d(0));
        return parcelableArrayList == null ? new h1(new f1[0]) : new h1((f1[]) com.google.android.exoplayer2.util.c.b(f1.CREATOR, parcelableArrayList).toArray(new f1[0]));
    }

    private void f() {
        int i10 = 0;
        while (i10 < this.trackGroups.size()) {
            int i11 = i10 + 1;
            for (int i12 = i11; i12 < this.trackGroups.size(); i12++) {
                if (this.trackGroups.get(i10).equals(this.trackGroups.get(i12))) {
                    com.google.android.exoplayer2.util.t.d(TAG, "", new IllegalArgumentException("Multiple identical TrackGroups added to one TrackGroupArray."));
                }
            }
            i10 = i11;
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || h1.class != obj.getClass()) {
            return false;
        }
        h1 h1Var = (h1) obj;
        return this.length == h1Var.length && this.trackGroups.equals(h1Var.trackGroups);
    }

    private static String d(int i10) {
        return Integer.toString(i10, 36);
    }

    public f1 b(int i10) {
        return this.trackGroups.get(i10);
    }

    public int c(f1 f1Var) {
        int iIndexOf = this.trackGroups.indexOf(f1Var);
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

    @Override // com.google.android.exoplayer2.h
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList(d(0), com.google.android.exoplayer2.util.c.d(this.trackGroups));
        return bundle;
    }

    public h1(f1... f1VarArr) {
        this.trackGroups = com.google.common.collect.a0.u(f1VarArr);
        this.length = f1VarArr.length;
        f();
    }
}
