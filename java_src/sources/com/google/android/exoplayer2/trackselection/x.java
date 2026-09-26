package com.google.android.exoplayer2.trackselection;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.source.f1;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public final class x implements com.google.android.exoplayer2.h {
    public static final com.google.android.exoplayer2.h.a<x> CREATOR = new com.google.android.exoplayer2.h.a() { // from class: com.google.android.exoplayer2.trackselection.w
        @Override // com.google.android.exoplayer2.h.a
        public final com.google.android.exoplayer2.h a(Bundle bundle) {
            return x.d(bundle);
        }
    };
    private static final int FIELD_TRACKS = 1;
    private static final int FIELD_TRACK_GROUP = 0;
    public final f1 mediaTrackGroup;
    public final com.google.common.collect.a0<Integer> trackIndices;

    public x(f1 f1Var, int i10) {
        this(f1Var, com.google.common.collect.a0.y(Integer.valueOf(i10)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ x d(Bundle bundle) {
        return new x((f1) f1.CREATOR.a((Bundle) com.google.android.exoplayer2.util.a.e(bundle.getBundle(c(0)))), com.google.common.primitives.e.c((int[]) com.google.android.exoplayer2.util.a.e(bundle.getIntArray(c(1)))));
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || x.class != obj.getClass()) {
            return false;
        }
        x xVar = (x) obj;
        return this.mediaTrackGroup.equals(xVar.mediaTrackGroup) && this.trackIndices.equals(xVar.trackIndices);
    }

    public x(f1 f1Var, List<Integer> list) {
        if (!list.isEmpty() && (((Integer) Collections.min(list)).intValue() < 0 || ((Integer) Collections.max(list)).intValue() >= f1Var.length)) {
            throw new IndexOutOfBoundsException();
        }
        this.mediaTrackGroup = f1Var;
        this.trackIndices = com.google.common.collect.a0.t(list);
    }

    private static String c(int i10) {
        return Integer.toString(i10, 36);
    }

    public int b() {
        return this.mediaTrackGroup.type;
    }

    public int hashCode() {
        return this.mediaTrackGroup.hashCode() + (this.trackIndices.hashCode() * 31);
    }

    @Override // com.google.android.exoplayer2.h
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putBundle(c(0), this.mediaTrackGroup.toBundle());
        bundle.putIntArray(c(1), com.google.common.primitives.e.l(this.trackIndices));
        return bundle;
    }
}
