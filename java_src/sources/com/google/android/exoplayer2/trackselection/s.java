package com.google.android.exoplayer2.trackselection;

import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.source.f1;
import com.google.android.exoplayer2.z3;

/* JADX INFO: loaded from: classes9.dex */
public interface s extends v {

    public static final class a {
        private static final String TAG = "ETSDefinition";
        public final f1 group;
        public final int[] tracks;
        public final int type;

        public a(f1 f1Var, int... iArr) {
            this(f1Var, iArr, 0);
        }

        public a(f1 f1Var, int[] iArr, int i10) {
            if (iArr.length == 0) {
                com.google.android.exoplayer2.util.t.d(TAG, "Empty tracks are not allowed", new IllegalArgumentException());
            }
            this.group = f1Var;
            this.tracks = iArr;
            this.type = i10;
        }
    }

    public interface b {
        s[] a(a[] aVarArr, com.google.android.exoplayer2.upstream.e eVar, com.google.android.exoplayer2.source.b0.b bVar, z3 z3Var);
    }

    void a();

    void b();

    void c(boolean z6);

    void disable();

    void enable();

    a2 getSelectedFormat();

    int getSelectedIndex();

    void onPlaybackSpeed(float f);
}
